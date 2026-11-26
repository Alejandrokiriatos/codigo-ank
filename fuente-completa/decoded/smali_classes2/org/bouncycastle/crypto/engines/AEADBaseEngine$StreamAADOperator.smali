.class public Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StreamAADOperator"
.end annotation


# instance fields
.field private final stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;->stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;->stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;->getBuf()[B

    move-result-object v0

    return-object v0
.end method

.method public getLen()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;->stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;->stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;->stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;->write([BII)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;->stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ErasableOutputStream;->reset()V

    return-void
.end method
