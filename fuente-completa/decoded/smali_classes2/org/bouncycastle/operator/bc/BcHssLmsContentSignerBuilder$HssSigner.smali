.class Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HssSigner"
.end annotation


# instance fields
.field private signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

.field private final stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->stream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, v0}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->generateSignature([B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;

    if-nez v0, :cond_3

    instance-of v0, p2, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incorrect Key Parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;-><init>()V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/HSSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSSigner;-><init>()V

    :goto_2
    iput-object v0, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method
