.class Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DefaultAADOperator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultAADOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DefaultAADOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DefaultAADOperator;-><init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;)V

    return-void
.end method


# virtual methods
.method public getLen()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DefaultAADOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_aadPos:I

    return v0
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DefaultAADOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processor:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADProcessingBuffer;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADProcessingBuffer;->processAADByte(B)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DefaultAADOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->access$1200(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;[BII)V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method
