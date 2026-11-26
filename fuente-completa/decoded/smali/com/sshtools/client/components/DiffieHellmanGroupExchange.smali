.class public abstract Lcom/sshtools/client/components/DiffieHellmanGroupExchange;
.super Lcom/sshtools/client/SshKeyExchangeClient;
.source "DiffieHellmanGroupExchange.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/components/jce/AbstractKeyExchange;


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final SSH_MSG_KEY_DH_GEX_GROUP:I = 0x1f

.field static final SSH_MSG_KEY_DH_GEX_INIT:I = 0x20

.field static final SSH_MSG_KEY_DH_GEX_REPLY:I = 0x21

.field static final SSH_MSG_KEY_DH_GEX_REQUEST:I = 0x22

.field static final SSH_MSG_KEY_DH_GEX_REQUEST_OLD:I = 0x1e

.field static final TWO:Ljava/math/BigInteger;

.field static maxSupportedSize:I

.field static minSupportedSize:I


# instance fields
.field dhKeyAgreement:Ljavax/crypto/KeyAgreement;

.field dhKeyFactory:Ljava/security/KeyFactory;

.field dhKeyPair:Ljava/security/KeyPair;

.field dhKeyPairGen:Ljava/security/KeyPairGenerator;

.field e:Ljava/math/BigInteger;

.field f:Ljava/math/BigInteger;

.field g:Ljava/math/BigInteger;

.field hashAlgorithm:Ljava/lang/String;

.field kexAlgorithm:Ljava/lang/String;

.field max:Lcom/sshtools/common/util/UnsignedInteger32;

.field min:Lcom/sshtools/common/util/UnsignedInteger32;

.field n:Lcom/sshtools/common/util/UnsignedInteger32;

.field p:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;

.field y:Ljava/math/BigInteger;


# direct methods
.method static bridge synthetic -$$Nest$mmaybeLog(Lcom/sshtools/client/components/DiffieHellmanGroupExchange;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maybeLog(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 76
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 77
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->TWO:Ljava/math/BigInteger;

    const/4 v0, -0x1

    .line 99
    sput v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    .line 100
    sput v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->minSupportedSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p2, p3, p4}, Lcom/sshtools/client/SshKeyExchangeClient;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    .line 81
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    .line 82
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;

    .line 83
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->f:Ljava/math/BigInteger;

    .line 84
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->y:Ljava/math/BigInteger;

    .line 85
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->x:Ljava/math/BigInteger;

    .line 87
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->min:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 88
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->n:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 89
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->max:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 107
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->kexAlgorithm:Ljava/lang/String;

    return-void
.end method

.method private calculateE()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 368
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "maverick.dhBypassJCE"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 370
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Performing DH e parameter calculation manually because it has been forced by system configuration"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Performing DH e parameter calculation manually because P bit length is not multiple of 64 [{}]"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v0, 0x3

    move v1, v0

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 389
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    .line 390
    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "2"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 392
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v4, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->x:Ljava/math/BigInteger;

    .line 395
    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v4, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;

    .line 396
    sget-object v3, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    const-string v2, "Failed to generate key exchange value"

    invoke-interface {v1, v0, v2}, Lcom/sshtools/synergy/ssh/SshTransport;->disconnect(ILjava/lang/String;)V

    .line 382
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Key exchange failed to generate e value"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private calculateEwithJCE()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x3

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 351
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 352
    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyPairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v3, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 354
    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyPairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 355
    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 357
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    sget-object v3, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to generate DH value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    const-string v2, "Failed to generate key exchange value"

    invoke-interface {v1, v0, v2}, Lcom/sshtools/synergy/ssh/SshTransport;->disconnect(ILjava/lang/String;)V

    .line 342
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Key exchange failed to generate e value"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private calculateK()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->f:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->x:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->secret:Ljava/math/BigInteger;

    return-void
.end method

.method private calculateKwithJCE()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->f:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 314
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyFactory:Ljava/security/KeyFactory;

    .line 315
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 317
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 319
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 320
    aget-byte v3, v0, v1

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 321
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v3, v3, [B

    .line 322
    array-length v4, v0

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 326
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->secret:Ljava/math/BigInteger;

    return-void
.end method

.method private initCrypto()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 223
    const-string v0, "DH"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 224
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyFactory:Ljava/security/KeyFactory;

    .line 228
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_1

    .line 229
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    goto :goto_1

    .line 231
    :cond_1
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyPairGen:Ljava/security/KeyPairGenerator;

    .line 233
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_2

    .line 234
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    goto :goto_2

    .line 236
    :cond_2
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    return-void
.end method

.method private maybeLog(Ljava/lang/String;I)I
    .locals 1

    .line 169
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "{} size is {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p2
.end method

.method private verifyDHPrimeThresholds()V
    .locals 5

    .line 177
    sget v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->minSupportedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 179
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    .line 181
    sput v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->minSupportedSize:I

    const/16 v0, 0x2000

    .line 182
    sput v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    .line 184
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    sget v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->minSupportedSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Using BC for DH; prime range is {} to {} bits"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups;->allDefaultGroups()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 191
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v4, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->TWO:Ljava/math/BigInteger;

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 192
    iget-object v4, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyPairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v4, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 193
    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyPairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 194
    iget-object v4, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 195
    sget v3, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->minSupportedSize:I

    if-ne v3, v1, :cond_1

    .line 196
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    sput v3, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->minSupportedSize:I

    .line 198
    :cond_1
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    sput v3, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 201
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DH prime size {} will not be supported because {}"

    invoke-static {v3, v2}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_2
    sget v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    if-eq v0, v1, :cond_4

    const/16 v1, 0x800

    if-lt v0, v1, :cond_3

    .line 214
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    sget v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->minSupportedSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supported DH prime range is {} to {} bits"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 210
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    sget v1, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The maximum supported DH prime is %d bits which is smaller than this algorithm requires"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The diffie hellman algorithm does not appear to be configured correctly on this machine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected calculateExchangeHash()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {v0}, Lcom/sshtools/synergy/ssh/SshTransport;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getComponentManager()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    .line 512
    invoke-virtual {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/Digest;

    .line 515
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->clientKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 522
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->clientKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 525
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->serverKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 526
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->serverKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 529
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->hostKey:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 530
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->hostKey:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 532
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->min:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 533
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->n:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 534
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->max:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 537
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 539
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 542
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 545
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->f:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 548
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->secret:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 551
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->exchangeHash:[B

    return-void
.end method

.method public exchangeGroup(Lcom/sshtools/common/util/ByteArrayReader;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    .line 252
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    .line 259
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    const/16 v0, 0x10

    if-eqz p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Received {} bit DH prime with group {}"

    invoke-static {v1, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    sget v1, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    if-gt p1, v1, :cond_6

    .line 269
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    const/4 v1, 0x3

    const-string v2, "]"

    if-lez p1, :cond_5

    .line 273
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    int-to-long v3, p1

    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->min:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_4

    .line 278
    :try_start_0
    const-string p1, "maverick.dhBypassJCE"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    rem-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_2

    goto :goto_0

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->calculateEwithJCE()V

    goto :goto_1

    .line 279
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->calculateE()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :goto_1
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 290
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    new-instance v1, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$2;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$2;-><init>(Lcom/sshtools/client/components/DiffieHellmanGroupExchange;[B)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/sshtools/synergy/ssh/SshTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V

    return p1

    .line 284
    :catchall_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Failed to generate DH value"

    invoke-direct {p1, v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 274
    :cond_4
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Minimum DH p value not provided ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 270
    :cond_5
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid DH g value ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 264
    :cond_6
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    .line 266
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 264
    const-string v1, "Server sent a prime larger than our configuration can handle! p=%d, max=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->kexAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public init(Lcom/sshtools/synergy/ssh/SshTransport;Ljava/lang/String;Ljava/lang/String;[B[BLcom/sshtools/common/ssh/components/SshPrivateKey;Lcom/sshtools/common/ssh/components/SshPublicKey;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/SshTransport<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B",
            "Lcom/sshtools/common/ssh/components/SshPrivateKey;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    move-object p6, p5

    move p7, p8

    move p8, p9

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 572
    invoke-virtual/range {p1 .. p8}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->init(Lcom/sshtools/synergy/ssh/SshTransport;Ljava/lang/String;Ljava/lang/String;[B[BZZ)V

    return-void
.end method

.method public init(Lcom/sshtools/synergy/ssh/SshTransport;Ljava/lang/String;Ljava/lang/String;[B[BZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/SshTransport<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[BZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->clientId:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->serverId:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->clientKexInit:[B

    .line 128
    iput-object p5, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->serverKexInit:[B

    .line 129
    iput-boolean p6, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->firstPacketFollows:Z

    .line 130
    iput-boolean p7, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->useFirstPacket:Z

    .line 131
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->initCrypto()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->verifyDHPrimeThresholds()V

    .line 144
    new-instance p2, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;

    invoke-direct {p2, p0, p1}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;-><init>(Lcom/sshtools/client/components/DiffieHellmanGroupExchange;Lcom/sshtools/synergy/ssh/SshTransport;)V

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/sshtools/synergy/ssh/SshTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V

    return-void

    .line 136
    :catch_0
    new-instance p1, Lcom/sshtools/common/ssh/SshIOException;

    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string p3, "JCE does not support Diffie Hellman key exchange"

    const/16 p4, 0x10

    invoke-direct {p2, p3, p4}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, p2}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p1
.end method

.method public isKeyExchangeMessage(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processMessage([B)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "E: "

    const-string v1, "F: "

    const-string v2, "G: "

    const-string v3, "P: "

    .line 404
    new-instance v4, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v4, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 407
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->exchangeGroup(Lcom/sshtools/common/util/ByteArrayReader;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v5

    .line 411
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->reset()V

    .line 413
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v6, 0x21

    const/4 v7, 0x0

    if-eq p1, v6, :cond_1

    .line 478
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v7

    .line 418
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->hostKey:[B

    .line 419
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->f:Ljava/math/BigInteger;

    .line 420
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->signature:[B

    .line 422
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    const/16 v6, 0x10

    if-eqz p1, :cond_2

    .line 423
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->g:Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->f:Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 430
    const-string p1, "Verifying server DH parameters"

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    :cond_3
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->f:Ljava/math/BigInteger;

    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-static {p1, v0}, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups;->verifyParameters(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_b

    .line 438
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 439
    const-string p1, "Verified DH parameters. Performing DH calculations"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_4
    const-string p1, "maverick.dhBypassJCE"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    rem-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_5

    goto :goto_0

    .line 445
    :cond_5
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->calculateKwithJCE()V

    goto :goto_1

    .line 443
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->calculateK()V

    .line 448
    :goto_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 449
    const-string p1, "Verifying calculated DH parameters"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :cond_7
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->secret:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->p:Ljava/math/BigInteger;

    invoke-static {p1, v1}, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups;->verifyParameters(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 457
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 458
    const-string p1, "Calculating exchange hash"

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_8
    invoke-virtual {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->calculateExchangeHash()V

    .line 464
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 465
    const-string p1, "Completed key exchange calculations"

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    :cond_9
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/SshTransport;->sendNewKeys()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v5

    .line 453
    :cond_a
    :try_start_3
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Key exchange detected invalid k value %s"

    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 434
    :cond_b
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Key exchange detected invalid f value %s"

    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->f:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    .line 471
    :try_start_4
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Failed to read SSH_MSG_KEXDH_REPLY from message buffer"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 478
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 479
    throw p1
.end method

.method public test()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 577
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->initCrypto()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 579
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
