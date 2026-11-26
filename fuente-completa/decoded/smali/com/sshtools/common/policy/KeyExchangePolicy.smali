.class public Lcom/sshtools/common/policy/KeyExchangePolicy;
.super Lcom/sshtools/common/permissions/Permissions;
.source "KeyExchangePolicy.java"


# instance fields
.field maxDHGroupExchangeKeySize:I

.field minDHGroupExchangeKeySize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/sshtools/common/permissions/Permissions;-><init>()V

    const/16 v0, 0x800

    .line 29
    iput v0, p0, Lcom/sshtools/common/policy/KeyExchangePolicy;->minDHGroupExchangeKeySize:I

    const/16 v0, 0x2000

    .line 30
    iput v0, p0, Lcom/sshtools/common/policy/KeyExchangePolicy;->maxDHGroupExchangeKeySize:I

    return-void
.end method


# virtual methods
.method public getMaxDHGroupExchangeKeySize()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/sshtools/common/policy/KeyExchangePolicy;->maxDHGroupExchangeKeySize:I

    return v0
.end method

.method public getMinDHGroupExchangeKeySize()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/sshtools/common/policy/KeyExchangePolicy;->minDHGroupExchangeKeySize:I

    return v0
.end method

.method public setMaxDHGroupExchangeKeySize(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/sshtools/common/policy/KeyExchangePolicy;->maxDHGroupExchangeKeySize:I

    return-void
.end method

.method public setMinDHGroupExchangeKeySize(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/sshtools/common/policy/KeyExchangePolicy;->minDHGroupExchangeKeySize:I

    return-void
.end method
