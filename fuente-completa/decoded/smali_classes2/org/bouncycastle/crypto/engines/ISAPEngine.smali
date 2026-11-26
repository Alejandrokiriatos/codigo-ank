.class public Lorg/bouncycastle/crypto/engines/ISAPEngine;
.super Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;
    }
.end annotation


# static fields
.field private static final ISAP_STATE_SZ:I = 0x28


# instance fields
.field private final ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

.field private ISAP_rH:I

.field private k:[B

.field private npub:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->MAC_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->IV_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->KEY_SIZE:I

    sget-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string p1, "ISAP-K-128 AEAD"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect ISAP parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string p1, "ISAP-A-128 AEAD"

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string p1, "ISAP-K-128A AEAD"

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string p1, "ISAP-A-128A AEAD"

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->BlockSize:I

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->AADBufferSize:I

    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->Default:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I

    return p0
.end method

.method static synthetic access$002(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I

    return p1
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic doFinal([BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method protected finishAAD(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->finishAAD3(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;Z)V

    return-void
.end method

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIVBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getIVBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKeyBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getKeyBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMac()[B
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputSize(I)I
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getUpdateOutputSize(I)I
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getUpdateOutputSize(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected init([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->init()V

    return-void
.end method

.method public bridge synthetic processAADByte(B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processAADByte(B)V

    return-void
.end method

.method public bridge synthetic processAADBytes([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processAADBytes([BII)V

    return-void
.end method

.method protected processBufferAAD([BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->absorbMacBlock([BI)V

    return-void
.end method

.method protected processBufferDecrypt([BI[BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->processEncBlock([BI[BI)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {p3, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->absorbMacBlock([BI)V

    return-void
.end method

.method protected processBufferEncrypt([BI[BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->processEncBlock([BI[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {p1, p3, p4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->absorbMacBlock([BI)V

    return-void
.end method

.method public bridge synthetic processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processByte(B[BI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic processBytes([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method protected processFinalAAD()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->absorbFinalAADBlock()V

    return-void
.end method

.method protected processFinalBlock([BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->processEncFinalBlock([BI)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->m_bufPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->processMACFinal([BII[B)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->m_buf:[B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->m_bufPos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->processMACFinal([BII[B)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset()V

    return-void
.end method

.method protected reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->reset()V

    return-void
.end method
