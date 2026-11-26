.class Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;
.super Ljava/lang/Object;


# instance fields
.field private final matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumK()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addString()Ljava/lang/String;
    .locals 4

    const-string v0, "["

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    array-length v2, v2

    const-string v3, "]\n"

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Outer Matrix "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "],\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public expandMatrix([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    shl-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->uniformBlocks([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mldsa/Poly;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->matrix:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->addString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
