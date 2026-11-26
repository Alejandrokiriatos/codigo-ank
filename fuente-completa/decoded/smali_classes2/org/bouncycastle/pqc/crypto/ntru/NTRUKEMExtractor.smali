.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'ntruPrivateKey\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cmov([B[BB)V
    .locals 3

    not-int p3, p3

    add-int/lit8 p3, p3, 0x1

    int-to-byte p3, p3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v2, v1

    and-int/2addr v2, p3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->getParameterSet()Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    move-result-object v0

    if-eqz p1, :cond_1

    array-length v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    invoke-virtual {v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->decrypt([B[B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->rm:[B

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->fail:I

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    array-length v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v4, v5, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v8

    invoke-virtual {v4, v1, v6, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length v1, p1

    invoke-virtual {v4, p1, v7, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v4, v3, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    int-to-byte p1, v2

    invoke-direct {p0, v5, v3, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->cmov([B[BB)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes()I

    move-result p1

    invoke-static {v5, v7, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "encapsulation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'encapsulation\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->getParameterSet()Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v0

    return v0
.end method
