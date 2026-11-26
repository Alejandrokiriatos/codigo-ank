.class public Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DataOperatorType"
.end annotation


# static fields
.field public static final COUNTER:I = 0x1

.field public static final Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

.field public static final DATA_LIMIT:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final DataLimit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

.field public static final Default:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

.field public static final STREAM:I = 0x2

.field public static final STREAM_CIPHER:I = 0x3

.field public static final Stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

.field public static final StreamCipher:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;


# instance fields
.field private final ord:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Default:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->StreamCipher:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->DataLimit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->ord:I

    return-void
.end method

.method static synthetic access$700(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->ord:I

    return p0
.end method
