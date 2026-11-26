.class public abstract Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;
.super Ljava/lang/Object;
.source "AbstractSftpExtension.java"

# interfaces
.implements Lcom/sshtools/common/sftp/SftpExtension;


# instance fields
.field declaredInVersion:Z

.field name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;->declaredInVersion:Z

    .line 34
    iput-object p1, p0, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected generateDefaultData()[B
    .locals 1

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [B

    return-object v0
.end method

.method public getDefaultData()[B
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;->declaredInVersion:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;->generateDefaultData()[B

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDeclaredInVersion()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;->declaredInVersion:Z

    return v0
.end method
