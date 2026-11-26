.class public Lcom/sshtools/common/publickey/EncodedExtension;
.super Ljava/lang/Object;
.source "EncodedExtension.java"


# instance fields
.field known:Z

.field name:Ljava/lang/String;

.field value:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sshtools/common/publickey/EncodedExtension;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getStoredValue()[B
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sshtools/common/publickey/EncodedExtension;->value:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [B

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isKnown()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/sshtools/common/publickey/EncodedExtension;->known:Z

    return v0
.end method

.method protected setKnown(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/sshtools/common/publickey/EncodedExtension;->known:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sshtools/common/publickey/EncodedExtension;->name:Ljava/lang/String;

    return-void
.end method

.method protected setStoredValue([B)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sshtools/common/publickey/EncodedExtension;->value:[B

    return-void
.end method
