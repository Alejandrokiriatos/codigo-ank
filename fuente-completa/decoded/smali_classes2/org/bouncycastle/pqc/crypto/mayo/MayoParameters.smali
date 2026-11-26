.class public Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;
.super Ljava/lang/Object;


# static fields
.field public static final mayo1:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

.field public static final mayo2:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

.field public static final mayo3:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

.field public static final mayo5:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

.field private static final pkSeedBytes:I = 0x10


# instance fields
.field private final ACols:I

.field private final OBytes:I

.field private final P1Bytes:I

.field private final P2Bytes:I

.field private final cpkBytes:I

.field private final cskBytes:I

.field private final digestBytes:I

.field private final fTail:[I

.field private final k:I

.field private final m:I

.field private final mBytes:I

.field private final mVecLimbs:I

.field private final n:I

.field private final name:Ljava/lang/String;

.field private final o:I

.field private final rBytes:I

.field private final saltBytes:I

.field private final sigBytes:I

.field private final skSeedBytes:I

.field private final v:I

.field private final vBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {v1, v2, v2, v3}, [I

    move-result-object v18

    const/16 v20, 0x20

    const/16 v21, 0x18

    move v4, v1

    const-string v1, "MAYO_1"

    move v5, v2

    const/16 v2, 0x56

    move v6, v3

    const/16 v3, 0x4e

    move v7, v4

    const/4 v4, 0x5

    move v8, v5

    const/16 v5, 0x8

    move v9, v6

    const/16 v6, 0x4e

    move v10, v7

    const/16 v7, 0x51

    move v11, v8

    const/16 v8, 0xa

    move v12, v9

    const/16 v9, 0x27

    move v13, v10

    const/16 v10, 0x138

    move v14, v11

    const/16 v11, 0x27

    move v15, v12

    const/16 v12, 0x28

    move/from16 v16, v13

    const v13, 0x1d55f

    move/from16 v17, v14

    const/16 v14, 0x5f10

    move/from16 v19, v15

    const/16 v15, 0x18

    move/from16 v22, v16

    const/16 v16, 0x58c

    move/from16 v23, v17

    const/16 v17, 0x1c6

    move/from16 v24, v19

    const/16 v19, 0x18

    invoke-direct/range {v0 .. v21}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIII[IIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo1:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    const/4 v0, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    filled-new-array {v2, v3, v0, v2}, [I

    move-result-object v19

    const/16 v21, 0x20

    const/16 v22, 0x18

    move/from16 v16, v2

    const-string v2, "MAYO_2"

    move v6, v3

    const/16 v3, 0x51

    const/16 v4, 0x40

    const/4 v5, 0x4

    move/from16 v24, v6

    const/16 v6, 0x11

    const/16 v7, 0x40

    const/16 v8, 0x45

    const/4 v9, 0x4

    const/16 v10, 0x20

    const/16 v11, 0x220

    const/16 v12, 0x20

    const/16 v13, 0x22

    const v14, 0x10400

    const v15, 0x8800

    move/from16 v25, v16

    const/16 v16, 0x18

    const/16 v17, 0x1330

    const/16 v18, 0xba

    const/16 v20, 0x18

    move/from16 v0, v25

    invoke-direct/range {v1 .. v22}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIII[IIII)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo2:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    filled-new-array {v0, v4, v3, v1}, [I

    move-result-object v20

    const/16 v22, 0x30

    const/16 v23, 0x20

    move/from16 v17, v3

    const-string v3, "MAYO_3"

    move v6, v4

    const/16 v4, 0x76

    const/16 v5, 0x6c

    move/from16 v24, v6

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/16 v8, 0x6c

    const/16 v9, 0x6f

    const/16 v10, 0xb

    const/16 v11, 0x36

    const/16 v12, 0x21c

    const/16 v13, 0x36

    const/16 v14, 0x37

    const v15, 0x4d994

    const v16, 0xe3d0

    move/from16 v26, v17

    const/16 v17, 0x20

    const/16 v18, 0xbaa

    const/16 v19, 0x2a9

    move/from16 v1, v26

    invoke-direct/range {v2 .. v23}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIII[IIII)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo3:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    const/4 v2, 0x4

    const/4 v6, 0x0

    filled-new-array {v2, v6, v0, v1}, [I

    move-result-object v21

    const/16 v23, 0x40

    const/16 v24, 0x28

    const-string v4, "MAYO_5"

    const/16 v5, 0x9a

    const/16 v6, 0x8e

    const/16 v7, 0x9

    const/16 v8, 0xc

    const/16 v9, 0x8e

    const/16 v10, 0x91

    const/16 v11, 0xc

    const/16 v12, 0x47

    const/16 v13, 0x354

    const/16 v14, 0x47

    const/16 v15, 0x48

    const v16, 0xaffdf

    const v17, 0x1d898

    const/16 v18, 0x28

    const/16 v19, 0x15b2

    const/16 v20, 0x3c4

    const/16 v22, 0x28

    invoke-direct/range {v3 .. v24}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIII[IIII)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo5:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIIIIIII[IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->m:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mVecLimbs:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->o:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->v:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->ACols:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->k:I

    iput p9, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mBytes:I

    iput p10, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->OBytes:I

    iput p11, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->vBytes:I

    iput p12, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->rBytes:I

    iput p13, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->P1Bytes:I

    iput p14, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->P2Bytes:I

    iput p15, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->cskBytes:I

    move/from16 p1, p16

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->cpkBytes:I

    move/from16 p1, p17

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->sigBytes:I

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->fTail:[I

    move/from16 p1, p19

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->saltBytes:I

    move/from16 p1, p20

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->digestBytes:I

    move/from16 p1, p21

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->skSeedBytes:I

    return-void
.end method


# virtual methods
.method public getACols()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->ACols:I

    return v0
.end method

.method public getCpkBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->cpkBytes:I

    return v0
.end method

.method public getCskBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->cskBytes:I

    return v0
.end method

.method public getDigestBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->digestBytes:I

    return v0
.end method

.method public getFTail()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->fTail:[I

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->k:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->m:I

    return v0
.end method

.method public getMBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mBytes:I

    return v0
.end method

.method public getMVecLimbs()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mVecLimbs:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->n:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getO()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->o:I

    return v0
.end method

.method public getOBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->OBytes:I

    return v0
.end method

.method public getP1Bytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->P1Bytes:I

    return v0
.end method

.method public getP1Limbs()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->v:I

    add-int/lit8 v1, v0, 0x1

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mVecLimbs:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getP2Bytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->P2Bytes:I

    return v0
.end method

.method public getP2Limbs()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->v:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->o:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mVecLimbs:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getP3Limbs()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->o:I

    add-int/lit8 v1, v0, 0x1

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mVecLimbs:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getPkSeedBytes()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getRBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->rBytes:I

    return v0
.end method

.method public getSaltBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->saltBytes:I

    return v0
.end method

.method public getSigBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->sigBytes:I

    return v0
.end method

.method public getSkSeedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->skSeedBytes:I

    return v0
.end method

.method public getV()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->v:I

    return v0
.end method

.method public getVBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->vBytes:I

    return v0
.end method
