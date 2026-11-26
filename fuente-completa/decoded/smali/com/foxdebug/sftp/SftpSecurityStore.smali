.class final Lcom/foxdebug/sftp/SftpSecurityStore;
.super Ljava/lang/Object;
.source "SftpSecurityStore.java"


# static fields
.field private static final HOST_PREFS:Ljava/lang/String; = "acode_ssh_known_hosts_v1"

.field static final PROFILE_PREFIX:Ljava/lang/String; = "profile-"

.field private static final PROFILE_PREFS:Ljava/lang/String; = "acode_sftp_profiles_v1"


# instance fields
.field private final knownHosts:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

.field private final profiles:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "acode_sftp_profiles_v1"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/foxdebug/sftp/SftpSecurityStore;->profiles:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    .line 22
    new-instance v0, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "acode_ssh_known_hosts_v1"

    invoke-direct {v0, p1, v1, v2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/foxdebug/sftp/SftpSecurityStore;->knownHosts:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    return-void
.end method

.method static isProfileID(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 26
    const-string v0, "profile-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method declared-synchronized deleteProfile(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-static {p1}, Lcom/foxdebug/sftp/SftpSecurityStore;->isProfileID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/foxdebug/sftp/SftpSecurityStore;->profiles:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->removeSync(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized getKnownHost(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sftp/SftpSecurityStore;->knownHosts:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized getProfile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-static {p1}, Lcom/foxdebug/sftp/SftpSecurityStore;->isProfileID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/foxdebug/sftp/SftpSecurityStore;->profiles:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "SFTP profile was not found"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Invalid SFTP profile ID"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized saveProfile(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "profile-"

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/foxdebug/sftp/SftpSecurityStore;->isProfileID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/sftp/SftpSecurityStore;->profiles:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setStringSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 37
    monitor-exit p0

    return-object p1

    .line 35
    :cond_1
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Could not persist SFTP profile"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized trustHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    const-string v1, "algorithm"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string p2, "fingerprint"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string p2, "publicKey"

    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    iget-object p2, p0, Lcom/foxdebug/sftp/SftpSecurityStore;->knownHosts:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setStringSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Could not persist trusted SSH host"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
