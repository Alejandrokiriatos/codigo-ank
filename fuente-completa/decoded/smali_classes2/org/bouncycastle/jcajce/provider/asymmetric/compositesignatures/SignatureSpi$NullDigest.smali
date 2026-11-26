.class Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullDigest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private final bOut:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

.field private final expectedSize:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$1;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->bOut:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->expectedSize:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->bOut:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->expectedSize:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->bOut:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;->copy([BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->reset()V

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "provided pre-hash digest is the wrong length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->bOut:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->bOut:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->bOut:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;->bOut:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest$OpenByteArrayOutputStream;->write([BII)V

    return-void
.end method
