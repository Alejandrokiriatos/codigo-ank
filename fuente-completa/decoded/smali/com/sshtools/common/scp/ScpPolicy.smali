.class public Lcom/sshtools/common/scp/ScpPolicy;
.super Lcom/sshtools/common/permissions/Permissions;
.source "ScpPolicy.java"


# instance fields
.field scpCharsetEncoding:Ljava/lang/String;

.field scpReadWriteEvents:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/sshtools/common/permissions/Permissions;-><init>()V

    .line 30
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/sshtools/common/scp/ScpPolicy;->scpCharsetEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSCPCharsetEncoding()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpPolicy;->scpCharsetEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSCPReadWriteEvents()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/sshtools/common/scp/ScpPolicy;->scpReadWriteEvents:Z

    return v0
.end method

.method public setSCPCharsetEncoding(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sshtools/common/scp/ScpPolicy;->scpCharsetEncoding:Ljava/lang/String;

    return-void
.end method

.method public setSCPReadWriteEvents(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sshtools/common/scp/ScpPolicy;->scpReadWriteEvents:Z

    return-void
.end method
