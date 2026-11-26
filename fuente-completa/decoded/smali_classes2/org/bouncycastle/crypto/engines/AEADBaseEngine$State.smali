.class public Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "State"
.end annotation


# static fields
.field public static final DEC_AAD:I = 0x6

.field public static final DEC_DATA:I = 0x7

.field public static final DEC_FINAL:I = 0x8

.field public static final DEC_INIT:I = 0x5

.field public static final DecAad:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

.field public static final DecData:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

.field public static final DecFinal:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

.field public static final DecInit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

.field public static final ENC_AAD:I = 0x2

.field public static final ENC_DATA:I = 0x3

.field public static final ENC_FINAL:I = 0x4

.field public static final ENC_INIT:I = 0x1

.field public static final EncAad:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

.field public static final EncData:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

.field public static final EncFinal:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

.field public static final EncInit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

.field public static final UNINITIALIZED:I

.field public static final Uninitialized:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;


# instance fields
.field final ord:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    return-void
.end method
