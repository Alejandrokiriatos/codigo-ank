.class Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitDataOperator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLimitDataOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitDataOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitDataOperator;-><init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;)V

    return-void
.end method


# virtual methods
.method public getLen()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitDataOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    return v0
.end method

.method public processByte(B[BI)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitDataOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->dataLimitCounter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->increment()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitDataOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processor:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADProcessingBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADProcessingBuffer;->processByte(B[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitDataOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->dataLimitCounter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->increment(I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitDataOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processEncDecBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
