.class public abstract Lcom/sshtools/common/ssh/components/ComponentManager;
.super Ljava/lang/Object;
.source "ComponentManager.java"


# static fields
.field private static defaultEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sshtools/common/ssh/components/Component;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static instance:Lcom/sshtools/common/ssh/components/ComponentManager;

.field static lock:Ljava/lang/Object;


# instance fields
.field digests:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/Digest;",
            ">;"
        }
    .end annotation
.end field

.field private disabledAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field hmacsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;"
        }
    .end annotation
.end field

.field hmacsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;"
        }
    .end annotation
.end field

.field publickeys:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field ssh2ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;"
        }
    .end annotation
.end field

.field ssh2ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sshtools/common/ssh/components/ComponentManager;->defaultEnabled:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sshtools/common/ssh/components/ComponentManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->disabledAlgorithms:Ljava/util/Set;

    .line 58
    const-string v1, "ssh-dss"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;
    .locals 1

    .line 142
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;
    .locals 4

    .line 126
    sget-object v0, Lcom/sshtools/common/ssh/components/ComponentManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/sshtools/common/ssh/components/ComponentManager;->instance:Lcom/sshtools/common/ssh/components/ComponentManager;

    if-eqz v1, :cond_0

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v1

    .line 131
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;-><init>()V

    sput-object v1, Lcom/sshtools/common/ssh/components/ComponentManager;->instance:Lcom/sshtools/common/ssh/components/ComponentManager;

    .line 132
    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->init()V

    .line 133
    sget-object v1, Lcom/sshtools/common/ssh/components/ComponentManager;->instance:Lcom/sshtools/common/ssh/components/ComponentManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 135
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to locate a cryptographic provider"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception v1

    .line 138
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static isDefaultEnabled(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/sshtools/common/ssh/components/Component;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/sshtools/common/ssh/components/ComponentManager;->defaultEnabled:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    .line 92
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static isEnableNoneCipher()Z
    .locals 2

    .line 74
    const-class v0, Lcom/sshtools/common/ssh/components/SshCipher;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->isDefaultEnabled(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEnableNoneMac()Z
    .locals 2

    .line 82
    const-class v0, Lcom/sshtools/common/ssh/components/SshHmac;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->isDefaultEnabled(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$loadComponents$0(Ljava/util/ServiceLoader$Provider;)Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;
    .locals 0

    .line 155
    invoke-interface {p0}, Ljava/util/ServiceLoader$Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;

    return-object p0
.end method

.method public static reset()V
    .locals 2

    .line 146
    sget-object v0, Lcom/sshtools/common/ssh/components/ComponentManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 147
    :try_start_0
    sput-object v1, Lcom/sshtools/common/ssh/components/ComponentManager;->instance:Lcom/sshtools/common/ssh/components/ComponentManager;

    .line 148
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDefaultEnabled(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/sshtools/common/ssh/components/Component;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/sshtools/common/ssh/components/ComponentManager;->defaultEnabled:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    sget-object v1, Lcom/sshtools/common/ssh/components/ComponentManager;->defaultEnabled:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setEnableNoneCipher(Z)V
    .locals 2

    .line 78
    const-class v0, Lcom/sshtools/common/ssh/components/SshCipher;

    const-string v1, "none"

    invoke-static {v0, v1, p0}, Lcom/sshtools/common/ssh/components/ComponentManager;->setDefaultEnabled(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setEnableNoneMac(Z)V
    .locals 2

    .line 86
    const-class v0, Lcom/sshtools/common/ssh/components/SshHmac;

    const-string v1, "none"

    invoke-static {v0, v1, p0}, Lcom/sshtools/common/ssh/components/ComponentManager;->setDefaultEnabled(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setInstance(Lcom/sshtools/common/ssh/components/ComponentManager;)V
    .locals 1

    .line 261
    sget-object v0, Lcom/sshtools/common/ssh/components/ComponentManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    sput-object p0, Lcom/sshtools/common/ssh/components/ComponentManager;->instance:Lcom/sshtools/common/ssh/components/ComponentManager;

    .line 263
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setMinimumSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;Lcom/sshtools/common/ssh/components/ComponentFactory;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SecurityLevel;",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 501
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "Configuring {}"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    :cond_0
    invoke-virtual {p2, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 506
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 507
    const-string p1, ""

    invoke-virtual {p2, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract createDsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract createDsaPublicKey()Lcom/sshtools/common/ssh/components/SshDsaPublicKey;
.end method

.method public abstract createDsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract createRsaPrivateCrtKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract createRsaPrivateCrtKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract createRsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract createRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract createSsh2RsaPublicKey()Lcom/sshtools/common/ssh/components/SshRsaPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public disableAlgorithm(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->disabledAlgorithms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enableAlgorithm(Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->disabledAlgorithms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract generateDsaKeyPair(I)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract generateEcdsaKeyPair(I)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract generateEd25519KeyPair()Lcom/sshtools/common/ssh/components/SshKeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract generateEd448KeyPair()Lcom/sshtools/common/ssh/components/SshKeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract generateRsaKeyPair(II)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public getDigest(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Digest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->digests:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/Digest;

    return-object p1
.end method

.method public abstract getRND()Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method protected init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 183
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "Initializing SSH2 server->client ciphers"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_0
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->ssh2ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 187
    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->initializeSsh2CipherFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V

    .line 189
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "Initializing SSH2 client->server ciphers"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_1
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->ssh2ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 193
    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->initializeSsh2CipherFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V

    .line 195
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "Initializing SSH2 server->client HMACs"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_2
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->hmacsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 199
    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->initializeHmacFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V

    .line 201
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    const-string v0, "Initializing SSH2 client->server HMACs"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_3
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->hmacsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 205
    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->initializeHmacFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V

    .line 207
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    const-string v0, "Initializing public keys"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :cond_4
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->publickeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 211
    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->initializePublicKeyFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V

    .line 213
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    const-string v0, "Initializing digests"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_5
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->digests:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 217
    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->initializeDigestFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V

    .line 219
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    const-string v0, "Initializing Secure Random Number Generator"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_6
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/ComponentManager;->getRND()Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;->nextInt()I

    return-void
.end method

.method protected abstract initializeDigestFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/Digest;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract initializeHmacFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract initializePublicKeyFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract initializeSsh2CipherFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;)V"
        }
    .end annotation
.end method

.method public isDisabled(Ljava/lang/String;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->disabledAlgorithms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/sshtools/common/ssh/components/Component;",
            ">(",
            "Lcom/sshtools/common/ssh/components/ComponentInstanceFactory<",
            "TC;>;",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 159
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "disable.%s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 160
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    const-string p1, "   {} WILL NOT be supported because it has been explicitly disabled by a system property"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 165
    :cond_1
    invoke-static {p2, p3}, Lcom/sshtools/common/ssh/components/ComponentManager;->isDefaultEnabled(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p2

    .line 166
    invoke-static {p2}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;->isEnabledByDefault()Z

    move-result p1

    if-nez p1, :cond_3

    .line 167
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 168
    const-string p1, "   {} WILL NOT be supported because it has been disabled by default by the vendor. It may be re-enabled programatically."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v1

    .line 172
    :cond_3
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 173
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 174
    const-string p1, "   {} WILL NOT be supported because it has been disabled programatically."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$loadComponents$1$com-sshtools-common-ssh-components-ComponentManager(Ljava/lang/Class;Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)Z
    .locals 2

    .line 155
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;->getKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->isEnabled(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadComponents(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/sshtools/common/ssh/components/Component;",
            "F::",
            "Lcom/sshtools/common/ssh/components/ComponentInstanceFactory<",
            "TC;>;>(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/Class<",
            "TF;>;)",
            "Ljava/lang/Iterable<",
            "TF;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ServiceLoader;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;Ljava/lang/Class;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public setMinimumSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 481
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Configuring {} Security"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->ssh2ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    const-string v1, "Client->Server Ciphers"

    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->setMinimumSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;Lcom/sshtools/common/ssh/components/ComponentFactory;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->ssh2ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    const-string v1, "Server->Client Ciphers"

    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->setMinimumSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;Lcom/sshtools/common/ssh/components/ComponentFactory;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->hmacsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    const-string v1, "Client->Server Macs"

    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->setMinimumSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;Lcom/sshtools/common/ssh/components/ComponentFactory;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->hmacsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    const-string v1, "Server->Client Macs"

    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->setMinimumSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;Lcom/sshtools/common/ssh/components/ComponentFactory;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->publickeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    const-string v1, "Public Keys"

    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->setMinimumSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;Lcom/sshtools/common/ssh/components/ComponentFactory;Ljava/lang/String;)V

    return-void
.end method

.method public supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/Digest;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->digests:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedHMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->hmacsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedHMacsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->hmacsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->publickeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedSsh2CiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->ssh2ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedSsh2CiphersSC()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager;->ssh2ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method
