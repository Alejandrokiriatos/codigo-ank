.class public final Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;

.field private final messageSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/MessageSigner;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;-><init>(Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$1;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->buffer:Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->messageSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'messageSigner\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMessage()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->buffer:Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->reset()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->reset()V

    throw v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->messageSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->getMessage()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->generateSignature([B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->messageSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->buffer:Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->buffer:Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->buffer:Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;->write([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->messageSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;->getMessage()[B

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method
