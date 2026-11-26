.class public Lorg/bouncycastle/crypto/threshold/ShamirSplitSecretShare;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/threshold/SecretShare;


# instance fields
.field final r:I

.field private final secretShare:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/threshold/ShamirSplitSecretShare;->secretShare:[B

    const/4 p1, 0x1

    iput p1, p0, Lorg/bouncycastle/crypto/threshold/ShamirSplitSecretShare;->r:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/threshold/ShamirSplitSecretShare;->secretShare:[B

    iput p2, p0, Lorg/bouncycastle/crypto/threshold/ShamirSplitSecretShare;->r:I

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/threshold/ShamirSplitSecretShare;->secretShare:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
