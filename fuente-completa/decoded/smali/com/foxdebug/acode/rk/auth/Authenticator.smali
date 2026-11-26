.class public Lcom/foxdebug/acode/rk/auth/Authenticator;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Authenticator.java"


# static fields
.field private static final API_ORIGINS:[Ljava/lang/String;

.field private static final AUTH_CONNECT_TIMEOUT_MS:I = 0x3a98

.field private static final AUTH_READ_TIMEOUT_MS:I = 0x7530

.field private static final KEY_MIGRATED_V2:Ljava/lang/String; = "migrated_host_to_domain_cookies"

.field private static final KEY_PENDING_BASE_URL:Ljava/lang/String; = "pending_login_base_url"

.field private static final KEY_PENDING_STATE:Ljava/lang/String; = "pending_login_state"

.field private static final KEY_PENDING_VERIFIER:Ljava/lang/String; = "pending_login_verifier"

.field private static final KEY_TOKEN:Ljava/lang/String; = "auth_token"

.field private static final LEGACY_ORIGINS:[Ljava/lang/String;

.field private static final PREFS_FILENAME:Ljava/lang/String; = "acode_auth_secure"

.field private static final PRO_PURCHASED:Ljava/lang/String; = "pro_purchased"

.field private static final TAG:Ljava/lang/String; = "AcodeAuth"


# instance fields
.field private volatile loginCallback:Lorg/apache/cordova/CallbackContext;

.field private final loginCallbackLock:Ljava/lang/Object;

.field private prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 35
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://acode.app"

    aput-object v3, v1, v2

    sput-object v1, Lcom/foxdebug/acode/rk/auth/Authenticator;->API_ORIGINS:[Ljava/lang/String;

    const/4 v1, 0x2

    .line 38
    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "https://dev.acode.app"

    aput-object v2, v1, v0

    sput-object v1, Lcom/foxdebug/acode/rk/auth/Authenticator;->LEGACY_ORIGINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->loginCallbackLock:Ljava/lang/Object;

    return-void
.end method

.method private clearLegacyCookies()V
    .locals 6

    .line 305
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 306
    sget-object v1, Lcom/foxdebug/acode/rk/auth/Authenticator;->LEGACY_ORIGINS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 307
    const-string v5, "token=; Path=/; Max-Age=0; Secure; HttpOnly; SameSite=None"

    invoke-virtual {v0, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method private clearTokenCookie()V
    .locals 6

    .line 297
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/foxdebug/acode/rk/auth/Authenticator;->API_ORIGINS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 299
    const-string v5, "token=; Domain=.acode.app; Path=/; Max-Age=0; Secure; HttpOnly; SameSite=None"

    invoke-virtual {v0, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method private exchangeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/api/user/app-token/exchange"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    .line 189
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x7530

    .line 190
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 191
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 192
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 196
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string p2, "state"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string p2, "verifier"

    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 201
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0x12c

    const/16 p4, 0xc8

    if-lt p2, p4, :cond_1

    if-ge p2, p3, :cond_1

    .line 205
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 206
    :goto_0
    invoke-direct {p0, v0}, Lcom/foxdebug/acode/rk/auth/Authenticator;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-lt p2, p4, :cond_3

    if-ge p2, p3, :cond_3

    .line 212
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    const-string p3, "token"

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p3, :cond_2

    .line 220
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    .line 215
    :cond_2
    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Missing token"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 209
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_0
    move-exception p3

    if-eqz p2, :cond_4

    .line 200
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    .line 220
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 221
    throw p2
.end method

.method private failLogin(Ljava/lang/String;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "pending_login_state"

    invoke-virtual {v0, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->remove(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "pending_login_verifier"

    invoke-virtual {v0, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->remove(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "pending_login_base_url"

    invoke-virtual {v0, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->remove(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/foxdebug/acode/rk/auth/Authenticator;->takeLoginCallback()Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleAuthCallback(Landroid/content/Intent;)Z
    .locals 7

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 149
    const-string v0, "acode"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "auth"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/callback"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 153
    :cond_1
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    iget-object p1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v0, "pending_login_state"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v2, "pending_login_verifier"

    invoke-virtual {v0, v2, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "pending_login_base_url"

    const-string v2, "https://acode.app"

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda4;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda4;-><init>(Lcom/foxdebug/acode/rk/auth/Authenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v0

    :cond_3
    :goto_1
    move-object v2, p0

    .line 160
    const-string p1, "Invalid login callback"

    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/auth/Authenticator;->failLogin(Ljava/lang/String;)V

    return v0

    :cond_4
    :goto_2
    move-object v2, p0

    const/4 p1, 0x0

    return p1
.end method

.method private randomHex(I)Ljava/lang/String;
    .locals 5

    .line 266
    new-array v0, p1, [B

    .line 267
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 269
    aget-byte v3, v0, v2

    .line 270
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 225
    const-string p1, ""

    return-object p1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 229
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 227
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private setLoginCallback(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->loginCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->loginCallback:Lorg/apache/cordova/CallbackContext;

    .line 250
    iput-object p1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->loginCallback:Lorg/apache/cordova/CallbackContext;

    .line 251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 253
    const-string p1, "Login cancelled"

    invoke-virtual {v1, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 251
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setTokenCookie(Ljava/lang/String;)V
    .locals 7

    .line 289
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 290
    sget-object v1, Lcom/foxdebug/acode/rk/auth/Authenticator;->API_ORIGINS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "token="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; Domain=.acode.app; Path=/; Secure; HttpOnly; SameSite=None"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method private sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 277
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 279
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 280
    const-string v4, "%02x"

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create auth challenge"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private startLogin(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 7

    .line 103
    const-string v0, "baseUrl"

    const-string v1, "https://acode.app"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    const-string v2, "appVersionCode"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x18

    .line 105
    invoke-direct {p0, v1}, Lcom/foxdebug/acode/rk/auth/Authenticator;->randomHex(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    .line 106
    invoke-direct {p0, v3}, Lcom/foxdebug/acode/rk/auth/Authenticator;->randomHex(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-direct {p0, v3}, Lcom/foxdebug/acode/rk/auth/Authenticator;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    iget-object v5, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v6, "pending_login_state"

    invoke-virtual {v5, v6, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v6, "pending_login_verifier"

    invoke-virtual {v5, v6, v3}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v5, "pending_login_base_url"

    invoke-virtual {v3, v5, v0}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p2}, Lcom/foxdebug/acode/rk/auth/Authenticator;->setLoginCallback(Lorg/apache/cordova/CallbackContext;)V

    .line 114
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "login"

    .line 116
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "redirect"

    const-string v5, "app"

    .line 117
    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "authFlow"

    const-string v5, "app-code"

    .line 118
    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "state"

    .line 119
    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "challenge"

    .line 120
    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 121
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;-><init>(Lcom/foxdebug/acode/rk/auth/Authenticator;Landroid/net/Uri;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private takeLoginCallback()Lorg/apache/cordova/CallbackContext;
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->loginCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->loginCallback:Lorg/apache/cordova/CallbackContext;

    const/4 v2, 0x0

    .line 260
    iput-object v2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->loginCallback:Lorg/apache/cordova/CallbackContext;

    .line 261
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native Action Called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AcodeAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "saveToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "logout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 90
    :goto_0
    const-string v0, "auth_token"

    packed-switch v4, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Attempted to call unknown action: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 79
    :pswitch_0
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    const-string p2, "Saving new token..."

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    invoke-virtual {p2, v0, p1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    new-instance v0, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda3;-><init>(Lcom/foxdebug/acode/rk/auth/Authenticator;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v2

    .line 86
    :pswitch_1
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 87
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/foxdebug/acode/rk/auth/Authenticator;->startLogin(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return v2

    .line 74
    :pswitch_2
    iget-object p1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    invoke-virtual {p1, v0}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->remove(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance p2, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda2;-><init>(Lcom/foxdebug/acode/rk/auth/Authenticator;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_4

    .line 76
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    :cond_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4167ea76 -> :sswitch_2
        0x625ef69 -> :sswitch_1
        0xa5c6e7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$execute$0$com-foxdebug-acode-rk-auth-Authenticator()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/foxdebug/acode/rk/auth/Authenticator;->clearTokenCookie()V

    return-void
.end method

.method synthetic lambda$execute$1$com-foxdebug-acode-rk-auth-Authenticator(Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/auth/Authenticator;->setTokenCookie(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleAuthCallback$3$com-foxdebug-acode-rk-auth-Authenticator(Ljava/lang/String;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/auth/Authenticator;->setTokenCookie(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleAuthCallback$4$com-foxdebug-acode-rk-auth-Authenticator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 166
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/foxdebug/acode/rk/auth/Authenticator;->exchangeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string p3, "auth_token"

    invoke-virtual {p2, p3, p1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string p3, "pending_login_state"

    invoke-virtual {p2, p3}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->remove(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string p3, "pending_login_verifier"

    invoke-virtual {p2, p3}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->remove(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string p3, "pending_login_base_url"

    invoke-virtual {p2, p3}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->remove(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    new-instance p3, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda1;-><init>(Lcom/foxdebug/acode/rk/auth/Authenticator;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    invoke-direct {p0}, Lcom/foxdebug/acode/rk/auth/Authenticator;->takeLoginCallback()Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 177
    const-string p2, "AcodeAuth"

    const-string p3, "Failed to exchange app auth code"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const-string p1, "Unable to complete login"

    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/auth/Authenticator;->failLogin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$startLogin$2$com-foxdebug-acode-rk-auth-Authenticator(Landroid/net/Uri;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    .line 0
    const/4 v0, 0x1

    .line 126
    :try_start_0
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 127
    iget-object v2, v1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 130
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 131
    invoke-virtual {v1, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 132
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 134
    :catch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    :try_start_1
    iget-object p1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 138
    invoke-virtual {p1, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 139
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/auth/Authenticator;->failLogin(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/auth/Authenticator;->handleAuthCallback(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected pluginInitialize()V
    .locals 5

    .line 48
    const-string v0, "Initializing Authenticator Plugin..."

    const-string v1, "AcodeAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    iget-object v2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "acode_auth_secure"

    invoke-direct {v0, v2, v3}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    .line 51
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 52
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 54
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const/4 v2, 0x0

    const-string v4, "migrated_host_to_domain_cookies"

    invoke-virtual {v0, v4, v2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "Migrating: clearing legacy host-scoped cookies"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/foxdebug/acode/rk/auth/Authenticator;->clearLegacyCookies()V

    .line 57
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    invoke-virtual {v0, v4, v3}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setBoolean(Ljava/lang/String;Z)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->prefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "auth_token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    invoke-direct {p0, v0}, Lcom/foxdebug/acode/rk/auth/Authenticator;->setTokenCookie(Ljava/lang/String;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/foxdebug/acode/rk/auth/Authenticator;->handleAuthCallback(Landroid/content/Intent;)Z

    return-void
.end method
