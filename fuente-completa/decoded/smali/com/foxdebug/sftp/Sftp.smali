.class public Lcom/foxdebug/sftp/Sftp;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Sftp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;,
        Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;,
        Lcom/foxdebug/sftp/Sftp$RemoteShell;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT_MS:J = 0x2710L

.field private static final MAX_CONNECT_TIMEOUT_MS:J = 0x7530L

.field private static final MIN_CONNECT_TIMEOUT_MS:J = 0x3e8L

.field private static final SFTP_MAX_WINDOW_SIZE:J = 0x100000L

.field private static final SFTP_MIN_WINDOW_SIZE:J = 0x20000L

.field private static final TAG:Ljava/lang/String; = "SFTP"

.field private static cryptoProviderConfigured:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private final connectionAttempts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;",
            ">;"
        }
    .end annotation
.end field

.field private connectionID:Ljava/lang/String;

.field private final connectionLock:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private final remoteShells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/foxdebug/sftp/Sftp$RemoteShell;",
            ">;"
        }
    .end annotation
.end field

.field private securityStore:Lcom/foxdebug/sftp/SftpSecurityStore;

.field private sftp:Lcom/sshtools/client/sftp/SftpClient;

.field private ssh:Lcom/sshtools/client/SshClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetconnectionAttempts(Lcom/foxdebug/sftp/Sftp;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp;->connectionAttempts:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectionID(Lcom/foxdebug/sftp/Sftp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp;->connectionID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectionLock(Lcom/foxdebug/sftp/Sftp;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp;->connectionLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/foxdebug/sftp/Sftp;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremoteShells(Lcom/foxdebug/sftp/Sftp;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp;->remoteShells:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsecurityStore(Lcom/foxdebug/sftp/Sftp;)Lcom/foxdebug/sftp/SftpSecurityStore;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp;->securityStore:Lcom/foxdebug/sftp/SftpSecurityStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp;->ssh:Lcom/sshtools/client/SshClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildProfileBuilder(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONObject;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp;->buildProfileBuilder(Lorg/json/JSONObject;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcloseConnectionQuietly(Lcom/foxdebug/sftp/Sftp;)V
    .locals 0

    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeConnectionQuietly()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfirmUnknownHost(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/sftp/Sftp;->confirmUnknownHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minvalidateSftpConnection(Lcom/foxdebug/sftp/Sftp;Lcom/sshtools/client/sftp/SftpClient;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/sftp/Sftp;->invalidateSftpConnection(Lcom/sshtools/client/sftp/SftpClient;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenRemoteShell(Lcom/foxdebug/sftp/Sftp;Lcom/sshtools/client/SshClient;IILorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/foxdebug/sftp/Sftp;->openRemoteShell(Lcom/sshtools/client/SshClient;IILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadUri(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp;->readUri(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msanitizePath(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowChangedHostKey(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/sftp/Sftp;->showChangedHostKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smconfigureClient(Lcom/sshtools/client/SshClientContext;)V
    .locals 0

    invoke-static {p0}, Lcom/foxdebug/sftp/Sftp;->configureClient(Lcom/sshtools/client/SshClientContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smconnectionCancelledError()Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/foxdebug/sftp/Sftp;->connectionCancelledError()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smhostKeyFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/foxdebug/sftp/Sftp;->hostKeyFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnullableProfileID(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/foxdebug/sftp/Sftp;->nullableProfileID(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smprofileInfo(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0, p1}, Lcom/foxdebug/sftp/Sftp;->profileInfo(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsendShellEvent(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/foxdebug/sftp/Sftp;->sendShellEvent(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/sftp/Sftp;->connectionLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/sftp/Sftp;->connectionAttempts:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/sftp/Sftp;->remoteShells:Ljava/util/Map;

    return-void
.end method

.method private buildProfileBuilder(Lorg/json/JSONObject;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v0, 0x2710

    .line 543
    invoke-direct {p0, p1, v0, v1}, Lcom/foxdebug/sftp/Sftp;->buildProfileBuilder(Lorg/json/JSONObject;J)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method private buildProfileBuilder(Lorg/json/JSONObject;J)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 550
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    const-string v1, "hostname"

    .line 551
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withHostname(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    const-string v1, "port"

    const/16 v2, 0x16

    .line 552
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPort(I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {v0, p2, p3}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withConnectTimeout(J)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p2

    const-string p3, "username"

    .line 554
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p2

    .line 556
    const-string p3, "authType"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "key"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 557
    const-string p3, "privateKey"

    .line 558
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    .line 557
    invoke-static {p3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    .line 561
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p3, "passphrase"

    .line 563
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-static {v0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p1

    const/4 p3, 0x1

    .line 565
    new-array p3, p3, [Lcom/sshtools/common/ssh/components/SshKeyPair;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withIdentities([Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    return-object p2

    .line 567
    :cond_0
    const-string p3, "password"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPassword(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    return-object p2
.end method

.method private cancelConnectionAttempts()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->connectionAttempts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;

    .line 522
    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$mcancel(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->connectionAttempts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    .line 353
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp;->ssh:Lcom/sshtools/client/SshClient;

    const/4 v2, 0x0

    .line 354
    iput-object v2, p0, Lcom/foxdebug/sftp/Sftp;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    .line 355
    iput-object v2, p0, Lcom/foxdebug/sftp/Sftp;->ssh:Lcom/sshtools/client/SshClient;

    .line 356
    iput-object v2, p0, Lcom/foxdebug/sftp/Sftp;->connectionID:Ljava/lang/String;

    .line 358
    const-string v2, "SFTP"

    if-eqz v0, :cond_0

    .line 360
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    const-string v3, "Failed to close the SFTP subsystem"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 367
    :try_start_1
    invoke-virtual {v1}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 369
    const-string v1, "Failed to close the SSH connection"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private closeRemoteShells()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->remoteShells:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/foxdebug/sftp/Sftp$RemoteShell;

    const/4 v2, 0x0

    .line 515
    invoke-static {v1, v2, v2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$mfinish(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->remoteShells:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static configureClient(Lcom/sshtools/client/SshClientContext;)V
    .locals 3

    .line 341
    const-class v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClientContext;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/policy/FileSystemPolicy;

    .line 342
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/32 v1, 0x100000

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->setSftpMaxWindowSize(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 345
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/32 v1, 0x20000

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->setSftpMinWindowSize(Lcom/sshtools/common/util/UnsignedInteger32;)V

    const/4 v0, 0x4

    .line 348
    invoke-virtual {p0, v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->setMaximumNumberofAsyncSFTPRequests(I)V

    return-void
.end method

.method private static declared-synchronized configureCryptoProvider()V
    .locals 3

    const-class v0, Lcom/foxdebug/sftp/Sftp;

    monitor-enter v0

    .line 332
    :try_start_0
    sget-boolean v1, Lcom/foxdebug/sftp/Sftp;->cryptoProviderConfigured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 334
    :cond_0
    :try_start_1
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 335
    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 336
    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->enableBouncyCastle(Z)V

    .line 337
    sput-boolean v2, Lcom/foxdebug/sftp/Sftp;->cryptoProviderConfigured:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private confirmUnknownHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 459
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 460
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 486
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 487
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private static connectionCancelledError()Lorg/json/JSONObject;
    .locals 3

    .line 441
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 443
    :try_start_0
    const-string v1, "code"

    const-string v2, "SFTP_CONNECT_CANCELLED"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v1, "message"

    const-string v2, "SFTP connection cancelled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v1, "cancelled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 446
    const-string v1, "nonRetryable"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private establishConnection(Lcom/sshtools/client/SshClient$SshClientBuilder;Ljava/lang/String;Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->connectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeConnectionQuietly()V

    .line 382
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda0;-><init>(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)V

    invoke-virtual {p1, v1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->onConfigure(Lcom/sshtools/client/SshClient$OnConfiguration;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp;->ssh:Lcom/sshtools/client/SshClient;

    .line 383
    invoke-static {p4}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeConnectionQuietly()V

    .line 385
    monitor-exit v0

    return p3

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp;->ssh:Lcom/sshtools/client/SshClient;

    invoke-virtual {p1}, Lcom/sshtools/client/SshClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeConnectionQuietly()V

    .line 389
    monitor-exit v0

    return p3

    .line 392
    :cond_1
    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp;->connectionID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :try_start_1
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/foxdebug/sftp/Sftp;->ssh:Lcom/sshtools/client/SshClient;

    invoke-virtual {p1, p2}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp;->sftp:Lcom/sshtools/client/sftp/SftpClient;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :try_start_2
    invoke-static {p4}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeConnectionQuietly()V

    .line 402
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p3

    .line 406
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->setCharsetEncoding(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 408
    :goto_0
    :try_start_4
    const-string p2, "SFTP"

    const-string p3, "Failed to set UTF-8 encoding, using the default"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    :goto_1
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    .line 396
    :goto_2
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeConnectionQuietly()V

    .line 397
    throw p1

    :catchall_0
    move-exception p1

    .line 411
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private static hostKeyFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 430
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 431
    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string p0, "host"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string p0, "fingerprint"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    .line 435
    const-string p0, "expectedFingerprint"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private invalidateSftpConnection(Lcom/sshtools/client/sftp/SftpClient;Ljava/lang/Exception;)V
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->connectionLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 1351
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    const-string p1, "SFTP"

    const-string v1, "Invalidating failed SFTP connection"

    invoke-static {p1, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1353
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeConnectionQuietly()V

    .line 1354
    monitor-exit v0

    return-void

    .line 1351
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1354
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static isAllowedAction(Ljava/lang/String;)Z
    .locals 4

    .line 962
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "editProfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "createFile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "isConnected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "saveProfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "mkdir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "lsDir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "close"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "openShellUsingProfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "stat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "pwd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "rm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getFile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "putFile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "getProfileInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "deleteProfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_10
    const-string v0, "writeShell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_11
    const-string v0, "testProfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_12
    const-string v0, "resizeShell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_13
    const-string v0, "rename"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_14
    const-string v0, "cancelConnection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_15
    const-string v0, "connectUsingProfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    move v3, v1

    goto :goto_0

    :sswitch_16
    const-string v0, "closeShell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b8f74e8 -> :sswitch_16
        -0x51dc1971 -> :sswitch_15
        -0x4c53c708 -> :sswitch_14
        -0x37b4c8c2 -> :sswitch_13
        -0x34415e24 -> :sswitch_12
        -0x29d80b49 -> :sswitch_11
        -0x2698d66f -> :sswitch_10
        -0x1ea60a82 -> :sswitch_f
        -0x1b97533f -> :sswitch_e
        -0xd1b02d5 -> :sswitch_d
        -0x480a20e -> :sswitch_c
        0xe3b -> :sswitch_b
        0x1b33d -> :sswitch_a
        0x2fb891 -> :sswitch_9
        0x360654 -> :sswitch_8
        0x36549ab -> :sswitch_7
        0x5a5ddf8 -> :sswitch_6
        0x6273d86 -> :sswitch_5
        0x6322a2f -> :sswitch_4
        0x16b9296c -> :sswitch_3
        0x23b734ff -> :sswitch_2
        0x51962c98 -> :sswitch_1
        0x5dcbb43f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$confirmUnknownHost$1(Ljava/util/concurrent/CountDownLatch;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 473
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$confirmUnknownHost$2(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    .line 477
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 478
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$confirmUnknownHost$3(Ljava/util/concurrent/CountDownLatch;Landroid/content/DialogInterface;)V
    .locals 0

    .line 482
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$deleteProfile$6(Lorg/apache/cordova/CallbackContext;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 878
    const-string p1, "Profile deletion was cancelled"

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$deleteProfile$8(Lorg/apache/cordova/CallbackContext;Landroid/content/DialogInterface;)V
    .locals 0

    .line 889
    const-string p1, "Profile deletion was cancelled"

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$establishConnection$0(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/sshtools/client/SshClientContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 382
    invoke-static {p0, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$mconfigure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/sshtools/client/SshClientContext;)V

    return-void
.end method

.method private static nullableProfileID(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3

    .line 852
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 855
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 857
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    .line 858
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "undefined"

    .line 859
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private openRemoteShell(Lcom/sshtools/client/SshClient;IILorg/apache/cordova/CallbackContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    invoke-virtual {p1}, Lcom/sshtools/client/SshClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 603
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 606
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sshtools/client/SshClient;->openSessionChannel(Z)Lcom/sshtools/client/SessionChannelNG;

    move-result-object v5
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    new-instance v1, Lcom/foxdebug/sftp/Sftp$RemoteShell;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/foxdebug/sftp/Sftp$RemoteShell;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Lcom/sshtools/client/SshClient;Lcom/sshtools/client/SessionChannelNG;Lorg/apache/cordova/CallbackContext;Lcom/foxdebug/sftp/Sftp-IA;)V

    .line 612
    iget-object p1, v2, Lcom/foxdebug/sftp/Sftp;->remoteShells:Ljava/util/Map;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance p1, Lcom/foxdebug/sftp/Sftp$1;

    invoke-direct {p1, p0, v1, v5}, Lcom/foxdebug/sftp/Sftp$1;-><init>(Lcom/foxdebug/sftp/Sftp;Lcom/foxdebug/sftp/Sftp$RemoteShell;Lcom/sshtools/client/SessionChannelNG;)V

    invoke-virtual {v5, p1}, Lcom/sshtools/client/SessionChannelNG;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V

    .line 646
    const-string p1, "xterm-256color"

    .line 647
    invoke-virtual {v5, p1, p2, p3}, Lcom/sshtools/client/SessionChannelNG;->allocatePseudoTerminal(Ljava/lang/String;II)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    const-wide/16 p2, 0x7530

    .line 648
    invoke-interface {p1, p2, p3}, Lcom/sshtools/common/ssh/RequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    .line 649
    invoke-interface {p1}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    .line 650
    const-string p1, "Remote server rejected PTY allocation"

    invoke-static {v1, p4, p1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$mfinish(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    .line 653
    :cond_0
    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$fgetfinished(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {v5}, Lcom/sshtools/client/SessionChannelNG;->startShell()Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/sshtools/common/ssh/RequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    .line 656
    invoke-interface {p1}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_2

    .line 657
    const-string p1, "Remote server rejected the interactive shell"

    invoke-static {v1, p4, p1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$mfinish(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    .line 660
    :cond_2
    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$fgetfinished(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 662
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 663
    const-string p2, "type"

    const-string p3, "ready"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string p2, "sessionId"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    invoke-static {v6, p1, v0}, Lcom/foxdebug/sftp/Sftp;->sendShellEvent(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, p0

    move-object v4, p1

    move-object p1, v0

    .line 608
    invoke-virtual {v4}, Lcom/sshtools/client/SshClient;->close()V

    .line 609
    throw p1

    :cond_4
    move-object v2, p0

    move-object v4, p1

    .line 599
    invoke-virtual {v4}, Lcom/sshtools/client/SshClient;->close()V

    .line 600
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to establish SSH connection"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static profileInfo(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 842
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 843
    const-string v1, "profileId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    const-string p0, "hostname"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p0, 0x16

    .line 845
    const-string v1, "port"

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 846
    const-string p0, "username"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 847
    const-string p0, "password"

    const-string v1, "authType"

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private readUri(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->context:Landroid/content/Context;

    .line 578
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 579
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 580
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    const/16 v1, 0x2000

    .line 583
    :try_start_1
    new-array v1, v1, [B

    .line 585
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 586
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 582
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not open key file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 576
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0

    .line 574
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Private key file is required"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sanitizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1579
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1581
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1579
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1583
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1585
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1583
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    .line 1587
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2F"

    const-string v2, "/"

    .line 1588
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%5C"

    const-string v2, "\\"

    .line 1589
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private static sendShellEvent(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V
    .locals 2

    .line 419
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 420
    invoke-virtual {v0, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 421
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private showChangedHostKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda5;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startProfileConnection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Z)V
    .locals 12

    const/4 v0, 0x1

    .line 1011
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    .line 1015
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    .line 1018
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 1016
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1020
    new-instance v11, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;

    const/4 v1, 0x0

    invoke-direct {v11, p0, p2, v1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/apache/cordova/CallbackContext;Lcom/foxdebug/sftp/Sftp-IA;)V

    .line 1021
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp;->connectionAttempts:Ljava/util/Map;

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1022
    const-string p1, "An SFTP connection with this request ID is already running"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1026
    :cond_1
    new-instance p2, Lcom/foxdebug/sftp/Sftp$6;

    new-instance v5, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;

    move-object v6, p0

    move-object v7, p1

    move v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;JZLcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V

    invoke-direct {p2, p0, v5, v0, v11}, Lcom/foxdebug/sftp/Sftp$6;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/util/concurrent/Callable;Ljava/lang/String;Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V

    .line 1117
    invoke-static {v11, p2}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$msetFuture(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/util/concurrent/Future;)V

    .line 1118
    iget-object p1, v6, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancelConnection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->connectionAttempts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;

    if-eqz p1, :cond_0

    .line 1002
    invoke-static {p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$mcancel(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V

    .line 1003
    :cond_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method public close(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 1598
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1599
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/foxdebug/sftp/Sftp$17;

    invoke-direct {v0, p0, p2}, Lcom/foxdebug/sftp/Sftp$17;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/apache/cordova/CallbackContext;)V

    .line 1600
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public closeShell(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->remoteShells:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/foxdebug/sftp/Sftp$RemoteShell;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 926
    invoke-static {p1, v0, v0}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$mfinish(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 927
    :cond_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method public connectUsingProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 993
    invoke-direct {p0, p1, p2, v0}, Lcom/foxdebug/sftp/Sftp;->startProfileConnection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Z)V

    return-void
.end method

.method public createFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1489
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1490
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$14;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1491
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->securityStore:Lcom/foxdebug/sftp/SftpSecurityStore;

    invoke-virtual {v0, p1}, Lcom/foxdebug/sftp/SftpSecurityStore;->getProfile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "username"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hostname"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda9;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not delete SFTP profile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method public editProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 744
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$4;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 745
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public errMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1641
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1642
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 1643
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public exec(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1123
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$7;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1124
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 5

    .line 935
    invoke-static {p1}, Lcom/foxdebug/sftp/Sftp;->isAllowedAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 936
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SFTP action is not available: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 940
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v1

    const-class v3, Lorg/apache/cordova/CallbackContext;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 941
    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 954
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception p1

    .line 951
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Security exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 948
    :catch_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Method not found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1
.end method

.method public getFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1150
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$8;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1151
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getProfileInfo(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 823
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$5;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 824
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .line 323
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 324
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp;->context:Landroid/content/Context;

    .line 325
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    .line 326
    new-instance p1, Lcom/foxdebug/sftp/SftpSecurityStore;

    iget-object p2, p0, Lcom/foxdebug/sftp/Sftp;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/foxdebug/sftp/SftpSecurityStore;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp;->securityStore:Lcom/foxdebug/sftp/SftpSecurityStore;

    .line 327
    const-string p1, "maverick.log.nothread"

    const-string p2, "true"

    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    invoke-static {}, Lcom/foxdebug/sftp/Sftp;->configureCryptoProvider()V

    return-void
.end method

.method public isConnected(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 1617
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1618
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/foxdebug/sftp/Sftp$18;

    invoke-direct {v0, p0, p2}, Lcom/foxdebug/sftp/Sftp$18;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/apache/cordova/CallbackContext;)V

    .line 1619
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$confirmUnknownHost$4$com-foxdebug-sftp-Sftp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    .line 462
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Unknown SSH host"

    .line 463
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is the first connection to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".\n\nKey type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nFingerprint: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\nVerify this fingerprint before trusting the host."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda2;

    invoke-direct {p2, p4}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 473
    const-string p3, "Cancel"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda3;

    invoke-direct {p2, p5, p4}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    .line 474
    const-string p3, "Trust and connect"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 482
    new-instance p2, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda4;

    invoke-direct {p2, p4}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 483
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$deleteProfile$7$com-foxdebug-sftp-Sftp(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 883
    iget-object p3, p0, Lcom/foxdebug/sftp/Sftp;->securityStore:Lcom/foxdebug/sftp/SftpSecurityStore;

    invoke-virtual {p3, p1}, Lcom/foxdebug/sftp/SftpSecurityStore;->deleteProfile(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method synthetic lambda$deleteProfile$9$com-foxdebug-sftp-Sftp(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 3

    .line 871
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Delete saved SSH credentials?"

    .line 872
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove the encrypted SFTP/SSH profile for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 873
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda6;-><init>(Lorg/apache/cordova/CallbackContext;)V

    .line 876
    const-string v1, "Cancel"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3, p2}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda7;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 880
    const-string p3, "Delete"

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 887
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 888
    new-instance p3, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda8;

    invoke-direct {p3, p2}, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda8;-><init>(Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 891
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$showChangedHostKey$5$com-foxdebug-sftp-Sftp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 498
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "SSH host key changed"

    .line 499
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The identity of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has changed. The connection was blocked.\n\nExpected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nReceived: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Close"

    const/4 p3, 0x0

    .line 508
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$startProfileConnection$10$com-foxdebug-sftp-Sftp(Lorg/json/JSONArray;JZLcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    .line 1029
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp;->securityStore:Lcom/foxdebug/sftp/SftpSecurityStore;

    invoke-virtual {v1, p1}, Lcom/foxdebug/sftp/SftpSecurityStore;->getProfile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1032
    new-instance v2, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    const-string v3, "hostname"

    .line 1033
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "port"

    const/16 v5, 0x16

    .line 1034
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;ILcom/foxdebug/sftp/Sftp-IA;)V
    :try_end_0
    .catch Lcom/sshtools/common/publickey/InvalidPassphraseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1037
    :try_start_1
    invoke-direct {p0, v1, p2, p3}, Lcom/foxdebug/sftp/Sftp;->buildProfileBuilder(Lorg/json/JSONObject;J)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p2

    if-eqz p4, :cond_2

    .line 1044
    iget-object p3, p0, Lcom/foxdebug/sftp/Sftp;->connectionLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_1
    .catch Lcom/sshtools/common/publickey/InvalidPassphraseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1045
    :try_start_2
    invoke-direct {p0, p2, p1, v2, p5}, Lcom/foxdebug/sftp/Sftp;->establishConnection(Lcom/sshtools/client/SshClient$SshClientBuilder;Ljava/lang/String;Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1051
    invoke-static {p5}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1052
    iget-object p2, p0, Lcom/foxdebug/sftp/Sftp;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    if-eqz p2, :cond_0

    .line 1058
    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpClient;->pwd()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1054
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SFTP connection was closed before validation"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object p2, v0

    .line 1060
    :goto_0
    monitor-exit p3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 1062
    :cond_2
    invoke-direct {p0, p2, p1, v2, p5}, Lcom/foxdebug/sftp/Sftp;->establishConnection(Lcom/sshtools/client/SshClient$SshClientBuilder;Ljava/lang/String;Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p1

    move-object p2, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 1070
    invoke-static {p5}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    if-eqz p4, :cond_4

    .line 1072
    invoke-static {p5, p2}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$msuccess(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/lang/String;)V

    goto :goto_2

    .line 1074
    :cond_4
    invoke-static {p5}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$msuccess(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V

    :goto_2
    return-object v0

    .line 1078
    :cond_5
    invoke-static {p5}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v0

    .line 1079
    :cond_6
    invoke-static {v2}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$mtakeFailure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1081
    invoke-static {p5, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$merror(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Lorg/json/JSONObject;)V

    return-object v0

    .line 1084
    :cond_7
    const-string p1, "Failed to establish SSH connection"

    invoke-static {p5, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$merror(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/common/publickey/InvalidPassphraseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    .line 1101
    :catch_1
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp;->connectionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1102
    :try_start_4
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeConnectionQuietly()V

    .line 1103
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1104
    invoke-static {p5}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1105
    const-string p1, "Not enough memory to initialize SFTP"

    invoke-static {p5, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$merror(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception p2

    .line 1103
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p2

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 1090
    :goto_3
    invoke-static {p5}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p2

    if-eqz p2, :cond_8

    return-object v0

    :cond_8
    if-nez v2, :cond_9

    move-object p2, v0

    goto :goto_4

    .line 1093
    :cond_9
    invoke-static {v2}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$mtakeFailure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)Lorg/json/JSONObject;

    move-result-object p2

    :goto_4
    if-eqz p2, :cond_a

    .line 1095
    invoke-static {p5, p2}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$merror(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Lorg/json/JSONObject;)V

    return-object v0

    .line 1098
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to connect SFTP profile: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$merror(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/lang/String;)V

    .line 1099
    const-string p2, "SFTP"

    const-string p3, "Failed to connect SFTP profile"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1086
    :catch_3
    invoke-static {p5}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1087
    const-string p1, "Invalid passphrase for stored key"

    invoke-static {p5, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->-$$Nest$merror(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-object v0
.end method

.method public lsDir(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1257
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$10;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1258
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public mkdir(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1442
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1443
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$12;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1444
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->cancelConnectionAttempts()V

    .line 537
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeRemoteShells()V

    .line 538
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    return-void
.end method

.method public onReset()V
    .locals 0

    .line 529
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->cancelConnectionAttempts()V

    .line 530
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp;->closeRemoteShells()V

    .line 531
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onReset()V

    return-void
.end method

.method public openShellUsingProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 670
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$2;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 671
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1203
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1204
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$9;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1205
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pwd(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 1557
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1558
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/foxdebug/sftp/Sftp$16;

    invoke-direct {v0, p0, p2}, Lcom/foxdebug/sftp/Sftp$16;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/apache/cordova/CallbackContext;)V

    .line 1559
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rename(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1533
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1534
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$15;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1535
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resizeShell(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 6

    const/4 v0, 0x0

    .line 909
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 910
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp;->remoteShells:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/foxdebug/sftp/Sftp$RemoteShell;

    if-eqz v1, :cond_1

    .line 911
    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$fgetfinished(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$fgetchannel(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Lcom/sshtools/client/SessionChannelNG;

    move-result-object v1

    const/16 v2, 0x50

    const/4 v3, 0x1

    .line 916
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x2

    const/16 v5, 0x18

    .line 917
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONArray;->optInt(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 915
    invoke-virtual {v1, v2, p1, v0, v0}, Lcom/sshtools/client/SessionChannelNG;->changeTerminalDimensions(IIII)V

    .line 921
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 912
    :cond_1
    :goto_0
    const-string p1, "SSH shell is not connected"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method public rm(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1464
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1465
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$13;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1466
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 707
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$3;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 708
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stat(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1358
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 1359
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/sftp/Sftp$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$11;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 1360
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public testProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 997
    invoke-direct {p0, p1, p2, v0}, Lcom/foxdebug/sftp/Sftp;->startProfileConnection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Z)V

    return-void
.end method

.method public writeShell(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp;->remoteShells:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/foxdebug/sftp/Sftp$RemoteShell;

    if-eqz v0, :cond_1

    .line 901
    invoke-static {v0}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$fgetfinished(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 905
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$mwrite(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 902
    :cond_1
    :goto_0
    const-string p1, "SSH shell is not connected"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method
