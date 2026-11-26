.class public Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;
.super Lcom/sshtools/common/ssh/components/ComponentManager;
.source "JCEComponentManager.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/jce/JCEAlgorithms;


# instance fields
.field classLoader:Ljava/lang/ClassLoader;

.field rnd:Lcom/sshtools/common/ssh/components/jce/SecureRND;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/ComponentManager;-><init>()V

    .line 94
    const-class v0, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->classLoader:Ljava/lang/ClassLoader;

    .line 97
    const-string v0, "org.graalvm.nativeimage.kind"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "executable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "Leaving provider configuration as running a native build."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_0
    const-string v0, "maverick.enableBCProvider"

    const-string v2, "true"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->isBCDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->enableBouncyCastle(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 112
    :catch_0
    const-string v0, "Bouncycastle JCE not found in classpath"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 102
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const-string v0, "Automatic configuration of BouncyCastle is disabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_3
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->disableBouncyCastle()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;
    .locals 1

    .line 519
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 171
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1

    .line 142
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initializeDefaultProvider(Ljava/security/Provider;)V
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeDefaultProvider(Ljava/security/Provider;)V

    return-void
.end method

.method public static initializeProviderForAlgorithm(Ljava/lang/String;Ljava/security/Provider;)V
    .locals 0

    .line 133
    invoke-static {p0, p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeProviderForAlgorithm(Ljava/lang/String;Ljava/security/Provider;)V

    return-void
.end method

.method public static setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setSecureRandomAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method private testDigest(Lcom/sshtools/common/ssh/components/DigestFactory;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/DigestFactory<",
            "Lcom/sshtools/common/ssh/components/Digest;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "   "

    .line 457
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/DigestFactory;->getKeys()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x0

    .line 460
    :try_start_0
    const-class v4, Lcom/sshtools/common/ssh/components/Digest;

    invoke-virtual {p0, p1, v4, v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->isEnabled(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    .line 463
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/DigestFactory;->create()Lcom/sshtools/common/ssh/components/Component;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/Digest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 465
    :try_start_1
    instance-of v3, p1, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;

    if-eqz v3, :cond_1

    .line 466
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    move-object v3, p1

    check-cast v3, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;

    .line 468
    invoke-virtual {v3}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->getProvider()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will be supported using JCE Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 467
    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    .line 472
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    .line 473
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->getProvider()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 474
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WILL NOT be supported from JCE Provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 476
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WILL NOT be supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return v2
.end method

.method private testHMac(Lcom/sshtools/common/ssh/components/SshHmacFactory;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/SshHmacFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "   "

    .line 485
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshHmacFactory;->getKeys()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 489
    :try_start_0
    const-class v3, Lcom/sshtools/common/ssh/components/SshHmac;

    invoke-virtual {p0, p1, v3, v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->isEnabled(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    .line 492
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshHmacFactory;->create()Lcom/sshtools/common/ssh/components/Component;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/SshHmac;

    const/16 v3, 0x400

    .line 493
    new-array v3, v3, [B

    .line 494
    invoke-interface {p1, v3}, Lcom/sshtools/common/ssh/components/SshHmac;->init([B)V

    .line 496
    instance-of v3, p1, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;

    if-eqz v3, :cond_1

    .line 497
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;

    .line 499
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->getProvider()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will be supported using JCE Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    .line 498
    invoke-static {p1, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 503
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WILL NOT be supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2
.end method

.method private testJCECipher(Lcom/sshtools/common/ssh/components/SshCipherFactory;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/SshCipherFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "   "

    .line 430
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshCipherFactory;->getKeys()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 434
    :try_start_0
    const-class v3, Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-virtual {p0, p1, v3, v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->isEnabled(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    .line 436
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshCipherFactory;->create()Lcom/sshtools/common/ssh/components/Component;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/SshCipher;

    const/16 v3, 0x400

    .line 437
    new-array v3, v3, [B

    .line 438
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 439
    invoke-interface {p1, v2, v3, v3}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 441
    instance-of v3, p1, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;

    if-eqz v3, :cond_1

    .line 442
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;

    .line 444
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->getProvider()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will be supported using JCE Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    .line 443
    invoke-static {p1, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 448
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WILL NOT be supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2
.end method

.method private testPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKeyFactory;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/SshPublicKeyFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "   "

    .line 400
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKeyFactory;->getKeys()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 403
    :try_start_0
    const-class v3, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {p0, p1, v3, v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->isEnabled(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    .line 405
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKeyFactory;->create()Lcom/sshtools/common/ssh/components/Component;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 406
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->test()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will be supported using JCE Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 411
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 412
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will not be supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2
.end method


# virtual methods
.method public createDsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public createDsaPublicKey()Lcom/sshtools/common/ssh/components/SshDsaPublicKey;
    .locals 1

    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createDsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 182
    :try_start_0
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 184
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createRsaPrivateCrtKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 197
    :try_start_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 198
    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 200
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p5, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 201
    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 203
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 206
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createRsaPrivateCrtKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 214
    :try_start_0
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 217
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createRsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 223
    :try_start_0
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 225
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 232
    :try_start_0
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 234
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createSsh2RsaPublicKey()Lcom/sshtools/common/ssh/components/SshRsaPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;-><init>()V

    return-object v0
.end method

.method public generateDsaKeyPair(I)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 246
    const-string v0, "DSA"

    :try_start_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 247
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 249
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 250
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    .line 254
    new-instance v1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 256
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/DSAPublicKey;

    invoke-direct {v2, v0, v3}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;-><init>(Ljava/security/interfaces/DSAPrivateKey;Ljava/security/interfaces/DSAPublicKey;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 257
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    invoke-virtual {v1, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 260
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public generateEcdsaKeyPair(I)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    const/16 v0, 0x180

    if-eq p1, v0, :cond_1

    const/16 v0, 0x209

    if-ne p1, v0, :cond_0

    .line 334
    const-string p1, "secp521r1"

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " for ECDSA key (256,384,521 supported)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 331
    :cond_1
    const-string p1, "secp384r1"

    goto :goto_0

    .line 328
    :cond_2
    const-string p1, "secp256r1"

    .line 341
    :goto_0
    :try_start_0
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v0, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 345
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 347
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 350
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    invoke-direct {v2, v3, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 351
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v2, v0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 355
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public generateEd25519KeyPair()Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 292
    :try_start_0
    const-string v0, "Ed25519"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 296
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;-><init>(Ljava/security/PrivateKey;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 297
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 301
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateEd448KeyPair()Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 308
    :try_start_0
    const-string v0, "Ed448"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 311
    new-instance v1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 312
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/SshEd448PrivateKeyJCE;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sshtools/common/ssh/components/jce/SshEd448PrivateKeyJCE;-><init>(Ljava/security/PrivateKey;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 313
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 317
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateRsaKeyPair(II)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 267
    const-string p2, "RSA"

    :try_start_0
    invoke-static {p2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {p2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p2

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {p2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object p2

    .line 270
    :goto_0
    invoke-virtual {p2, p1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 271
    invoke-virtual {p2}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    .line 273
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    .line 275
    new-instance v0, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 276
    instance-of v1, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_1

    .line 280
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;

    check-cast p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-direct {v1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 281
    new-instance p2, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    return-object v0

    .line 277
    :cond_1
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "RSA key generation requires RSAPrivateCrtKey as private key type."

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 285
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getRND()Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->rnd:Lcom/sshtools/common/ssh/components/jce/SecureRND;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sshtools/common/ssh/components/jce/SecureRND;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/SecureRND;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 363
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected initializeDigestFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/Digest;",
            ">;)V"
        }
    .end annotation

    .line 370
    const-class v0, Lcom/sshtools/common/ssh/components/DigestFactory;

    .line 371
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 370
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/DigestFactory;

    .line 372
    invoke-direct {p0, v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->testDigest(Lcom/sshtools/common/ssh/components/DigestFactory;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {p1, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected initializeHmacFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;)V"
        }
    .end annotation

    .line 380
    const-class v0, Lcom/sshtools/common/ssh/components/SshHmacFactory;

    .line 381
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 380
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/SshHmacFactory;

    .line 382
    invoke-direct {p0, v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->testHMac(Lcom/sshtools/common/ssh/components/SshHmacFactory;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {p1, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected initializePublicKeyFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;)V"
        }
    .end annotation

    .line 391
    const-class v0, Lcom/sshtools/common/ssh/components/SshPublicKeyFactory;

    .line 392
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 391
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/SshPublicKeyFactory;

    .line 393
    invoke-direct {p0, v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->testPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKeyFactory;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {p1, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected initializeSsh2CipherFactory(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;)V"
        }
    .end annotation

    .line 420
    const-class v0, Lcom/sshtools/common/ssh/components/SshCipherFactory;

    .line 421
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 420
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/SshCipherFactory;

    .line 422
    invoke-direct {p0, v1}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->testJCECipher(Lcom/sshtools/common/ssh/components/SshCipherFactory;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {p1, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method
