.class Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;
.super Ljava/lang/Object;


# instance fields
.field public final f11:[[[[B

.field public final f12:[[[[B

.field public final f21:[[[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getM()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getV()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result p1

    const/4 v3, 0x4

    new-array v4, v3, [I

    const/4 v5, 0x3

    aput p1, v4, v5

    const/4 v6, 0x2

    aput v1, v4, v6

    const/4 v7, 0x1

    aput v1, v4, v7

    const/4 v8, 0x0

    aput v0, v4, v8

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[[B

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f11:[[[[B

    new-array v4, v3, [I

    aput p1, v4, v5

    aput v2, v4, v6

    aput v1, v4, v7

    aput v0, v4, v8

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[[B

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f12:[[[[B

    new-array v3, v3, [I

    aput p1, v3, v5

    aput v1, v3, v6

    aput v2, v3, v7

    aput v0, v3, v8

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f21:[[[[B

    return-void
.end method
