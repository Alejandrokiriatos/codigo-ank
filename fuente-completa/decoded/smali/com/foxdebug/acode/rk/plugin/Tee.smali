.class public Lcom/foxdebug/acode/rk/plugin/Tee;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Tee.java"


# static fields
.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private context:Landroid/content/Context;

.field private final permissionStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile sessionId:Ljava/lang/String;

.field private final tokenStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/foxdebug/acode/rk/plugin/Tee;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->tokenStore:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->permissionStore:Ljava/util/Map;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->sessionId:Ljava/lang/String;

    return-void
.end method

.method private static constantTimeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 316
    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static generateSecret()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    .line 298
    new-array v0, v0, [B

    .line 299
    sget-object v1, Lcom/foxdebug/acode/rk/plugin/Tee;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 300
    invoke-static {v0}, Lcom/foxdebug/acode/rk/plugin/Tee;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginIdFromToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->tokenStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/foxdebug/acode/rk/plugin/Tee;->constantTimeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized handleTokenRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->tokenStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 266
    invoke-static {}, Lcom/foxdebug/acode/rk/plugin/Tee;->generateSecret()Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->tokenStore:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    const-string p2, "permissions"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 274
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 277
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 278
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->permissionStore:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 286
    :catch_0
    :try_start_3
    const-string p1, "INVALID_PLUGIN_JSON"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private invalidateToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->tokenStore:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/plugin/Tee;->constantTimeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->tokenStore:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    iget-object p2, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->permissionStore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isValidSession(Ljava/lang/String;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/plugin/Tee;->constantTimeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    .line 306
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 307
    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    const-string v0, "establishConnection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object p1, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->sessionId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 61
    const-string p1, "CONNECTION_ALREADY_ESTABLISHED"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lcom/foxdebug/acode/rk/plugin/Tee;->generateSecret()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->sessionId:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->sessionId:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 66
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 70
    :cond_1
    const-string v0, "requestToken"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/plugin/Tee;->isValidSession(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 76
    const-string p1, "INVALID_SESSION"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 80
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/foxdebug/acode/rk/plugin/Tee;->handleTokenRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 84
    :cond_3
    const-string v0, "get_secret"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/plugin/Tee;->getPluginIdFromToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 92
    const-string p1, "INVALID_TOKEN"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 96
    :cond_4
    new-instance v2, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    iget-object v3, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v0, p2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v1

    .line 104
    :cond_5
    const-string v0, "set_secret"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/plugin/Tee;->getPluginIdFromToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 112
    const-string p1, "INVALID_TOKEN"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 116
    :cond_6
    new-instance v2, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    iget-object v3, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, v0, p2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v1

    .line 124
    :cond_7
    const-string v0, "delete_secret"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/plugin/Tee;->getPluginIdFromToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 131
    const-string p1, "INVALID_TOKEN"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 135
    :cond_8
    new-instance v0, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    iget-object v2, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->context:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->remove(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v1

    .line 143
    :cond_9
    const-string v0, "clear_all_secrets"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/plugin/Tee;->getPluginIdFromToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    .line 149
    const-string p1, "INVALID_TOKEN"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 153
    :cond_a
    new-instance p2, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->clear()V

    .line 157
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v1

    .line 162
    :cond_b
    const-string v0, "invalidate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/plugin/Tee;->getPluginIdFromToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_c

    .line 168
    const-string p1, "INVALID_TOKEN"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 172
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/foxdebug/acode/rk/plugin/Tee;->invalidateToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v1

    .line 177
    :cond_d
    const-string v0, "grantedPermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 178
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 181
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->permissionStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 182
    const-string p1, "INVALID_TOKEN"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 186
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/foxdebug/acode/rk/plugin/Tee;->grantedPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 187
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return v1

    .line 191
    :cond_f
    const-string v0, "listAllPermissions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 192
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->permissionStore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 195
    const-string p1, "INVALID_TOKEN"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 199
    :cond_10
    invoke-virtual {p0, p1}, Lcom/foxdebug/acode/rk/plugin/Tee;->listAllPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 200
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 202
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    return v1

    :cond_11
    return v3
.end method

.method public grantedPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->permissionStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 242
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 43
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->context:Landroid/content/Context;

    return-void
.end method

.method public isTokenValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->tokenStore:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 236
    invoke-static {p1, p2}, Lcom/foxdebug/acode/rk/plugin/Tee;->constantTimeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public listAllPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->permissionStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 252
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onReset()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/foxdebug/acode/rk/plugin/Tee;->sessionId:Ljava/lang/String;

    return-void
.end method
