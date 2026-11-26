.class public Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ProcessingBufferType"
.end annotation


# static fields
.field public static final BUFFERED:I = 0x0

.field public static final Buffered:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

.field public static final IMMEDIATE:I = 0x1

.field public static final Immediate:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;


# instance fields
.field private final ord:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Buffered:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->ord:I

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->ord:I

    return p0
.end method
