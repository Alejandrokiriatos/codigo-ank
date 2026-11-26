.class public Lcom/sshtools/common/sshd/config/SshdConfigFile;
.super Ljava/lang/Object;
.source "SshdConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
    }
.end annotation


# static fields
.field public static final AcceptEnv:Ljava/lang/String; = "AcceptEnv"

.field public static final AddressFamily:Ljava/lang/String; = "AddresssFamily"

.field public static final AllowAgentForwarding:Ljava/lang/String; = "AllowAgentForwarding"

.field public static final AllowGroups:Ljava/lang/String; = "AllowGroups"

.field public static final AllowTcpForwarding:Ljava/lang/String; = "AllowTcpForwarding"

.field public static final AllowUsers:Ljava/lang/String; = "AllowUsers"

.field public static final AuthorizedKeysCommand:Ljava/lang/String; = "AuthorizedKeysCommand"

.field public static final AuthorizedKeysCommandRunAs:Ljava/lang/String; = "AuthorizedKeysCommandRunAs"

.field public static final AuthorizedKeysCommandUser:Ljava/lang/String; = "AuthorizedKeysCommandUser"

.field public static final AuthorizedKeysFile:Ljava/lang/String; = "AuthorizedKeysFile"

.field public static final Banner:Ljava/lang/String; = "Banner"

.field public static final ChallengeResponseAuthentication:Ljava/lang/String; = "ChallengeResponseAuthentication"

.field public static final ChrootDirectory:Ljava/lang/String; = "ChrootDirectory"

.field public static final Ciphers:Ljava/lang/String; = "Ciphers"

.field public static final ClientAliveCountMax:Ljava/lang/String; = "ClientAliveCountMax"

.field public static final ClientAliveInterval:Ljava/lang/String; = "ClientAliveInterval"

.field public static final Compression:Ljava/lang/String; = "Compression"

.field public static final DenyGroups:Ljava/lang/String; = "DenyGroups"

.field public static final DenyUsers:Ljava/lang/String; = "DenyUsers"

.field public static final ForceCommand:Ljava/lang/String; = "ForceCommand"

.field public static final GSSAPIAuthentication:Ljava/lang/String; = "GSSAPIAuthentication"

.field public static final GSSAPICleanupCredentials:Ljava/lang/String; = "GSSAPICleanupCredentials"

.field public static final GSSAPIKeyExchange:Ljava/lang/String; = "GSSAPIKeyExchange"

.field public static final GSSAPIStoreCredentialsOnRekey:Ljava/lang/String; = "GSSAPIStoreCredentialsOnRekey"

.field public static final GSSAPIStrictAcceptorCheck:Ljava/lang/String; = "GSSAPIStrictAcceptorCheck"

.field public static final GatewayPorts:Ljava/lang/String; = "GatewayPorts"

.field public static final HostKey:Ljava/lang/String; = "HostKey"

.field public static final HostbasedAuthentication:Ljava/lang/String; = "HostbasedAuthentication"

.field public static final HostbasedUsesNameFromPacketOnly:Ljava/lang/String; = "HostbasedUsesNameFromPacketOnly"

.field public static final IgnoreRhosts:Ljava/lang/String; = "IgnoreRhosts"

.field public static final IgnoreUserKnownHosts:Ljava/lang/String; = "IgnoreUserKnownHosts"

.field public static final KerberosAuthentication:Ljava/lang/String; = "KerberosAuthentication"

.field public static final KerberosGetAFSToken:Ljava/lang/String; = "KerberosGetAFSToken"

.field public static final KerberosOrLocalPasswd:Ljava/lang/String; = "KerberosOrLocalPasswd"

.field public static final KerberosTicketCleanup:Ljava/lang/String; = "KerberosTicketCleanup"

.field public static final KerberosUseKuserok:Ljava/lang/String; = "KerberosUseKuserok"

.field public static final KeyRegenerationInterval:Ljava/lang/String; = "KeyRegenerationInterval"

.field public static final ListenAddress:Ljava/lang/String; = "ListenAddress"

.field public static final LogLevel:Ljava/lang/String; = "LogLevel"

.field public static final LoginGraceTime:Ljava/lang/String; = "LoginGraceTime"

.field public static final MACs:Ljava/lang/String; = "MACs"

.field public static final Match:Ljava/lang/String; = "Match"

.field public static final MaxAuthTries:Ljava/lang/String; = "MaxAuthTries"

.field public static final MaxSessions:Ljava/lang/String; = "MaxSessions"

.field public static final MaxStartups:Ljava/lang/String; = "MaxStartups"

.field public static final PasswordAuthentication:Ljava/lang/String; = "PasswordAuthentication"

.field public static final PermitEmptyPasswords:Ljava/lang/String; = "PermitEmptyPasswords"

.field public static final PermitOpen:Ljava/lang/String; = "PermitOpen"

.field public static final PermitRootLogin:Ljava/lang/String; = "PermitRootLogin"

.field public static final PermitTTY:Ljava/lang/String; = "PermitTTY"

.field public static final PermitTunnel:Ljava/lang/String; = "PermitTunnel"

.field public static final PermitUserEnvironment:Ljava/lang/String; = "PermitUserEnvironment"

.field public static final PidFile:Ljava/lang/String; = "PidFile"

.field public static final Port:Ljava/lang/String; = "Port"

.field public static final PrintLastLog:Ljava/lang/String; = "PrintLastLog"

.field public static final PrintMotd:Ljava/lang/String; = "PrintMotd"

.field public static final Protocol:Ljava/lang/String; = "Protocol"

.field public static final PubkeyAuthentication:Ljava/lang/String; = "PubkeyAuthentication"

.field public static final RSAAuthentication:Ljava/lang/String; = "RSAAuthentication"

.field public static final RequiredAuthentications1:Ljava/lang/String; = "RequiredAuthentications1"

.field public static final RequiredAuthentications2:Ljava/lang/String; = "RequiredAuthentications2"

.field public static final RhostsRSAAuthentication:Ljava/lang/String; = "RhostsRSAAuthentication"

.field public static final ServerKeyBits:Ljava/lang/String; = "ServerKeyBits"

.field public static final ShowPatchLevel:Ljava/lang/String; = "ShowPatchLevel"

.field public static final StrictModes:Ljava/lang/String; = "StrictModes"

.field public static final Subsystem:Ljava/lang/String; = "Subsystem"

.field public static final SyslogFacility:Ljava/lang/String; = "SyslogFacility"

.field public static final TCPKeepAlive:Ljava/lang/String; = "TCPKeepAlive"

.field private static final TIME_OUT_SECONDS:I = 0x14

.field public static final UseDNS:Ljava/lang/String; = "UseDNS"

.field public static final UseLogin:Ljava/lang/String; = "UseLogin"

.field public static final UsePAM:Ljava/lang/String; = "UsePAM"

.field public static final UsePrivilegeSeparation:Ljava/lang/String; = "UsePrivilegeSeparation"

.field public static final VersionAddendum:Ljava/lang/String; = "VersionAddendum"

.field public static final X11DisplayOffset:Ljava/lang/String; = "X11DisplayOffset"

.field public static final X11Forwarding:Ljava/lang/String; = "X11Forwarding"

.field public static final X11UseLocalhost:Ljava/lang/String; = "X11UseLocalhost"

.field public static final XAuthLocation:Ljava/lang/String; = "XAuthLocation"


# instance fields
.field private globalConfiguration:Lcom/sshtools/common/sshd/config/GlobalConfiguration;

.field private lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private matchEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/sshd/config/MatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field private readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetglobalConfiguration(Lcom/sshtools/common/sshd/config/SshdConfigFile;)Lcom/sshtools/common/sshd/config/GlobalConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->globalConfiguration:Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmatchEntries(Lcom/sshtools/common/sshd/config/SshdConfigFile;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->matchEntries:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->matchEntries:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 58
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 139
    new-instance v0, Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/GlobalConfiguration;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;)V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->globalConfiguration:Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    return-void
.end method

.method public static builder()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
    .locals 1

    .line 247
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    invoke-direct {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addMatchEntry()Lcom/sshtools/common/sshd/config/MatchEntry;
    .locals 1

    .line 211
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigFile$4;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/SshdConfigFile$4;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/MatchEntry;

    return-object v0
.end method

.method public executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 227
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 229
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 232
    throw p1
.end method

.method public executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 238
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 243
    throw p1
.end method

.method public findMatchEntry(Ljava/util/Map;)Lcom/sshtools/common/sshd/config/MatchEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/sshd/config/MatchEntry;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigFile$1;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile$1;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sshd/config/MatchEntry;

    return-object p1
.end method

.method public findMatchEntryWithMatch(Ljava/util/Map;)Lcom/sshtools/common/sshd/config/MatchEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/sshtools/common/sshd/config/MatchEntry;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigFile$2;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile$2;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sshd/config/MatchEntry;

    return-object p1
.end method

.method public getGlobalConfiguration()Lcom/sshtools/common/sshd/config/GlobalConfiguration;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->globalConfiguration:Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    return-object v0
.end method

.method public getMatchEntriesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sshtools/common/sshd/config/MatchEntry;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile;->matchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeMatchEntry(Lcom/sshtools/common/sshd/config/MatchEntry;)V
    .locals 1

    .line 200
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigFile$3;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile$3;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method
