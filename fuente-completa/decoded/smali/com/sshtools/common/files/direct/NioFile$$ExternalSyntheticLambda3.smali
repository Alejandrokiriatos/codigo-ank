.class public final synthetic Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/common/files/direct/NioFile;

.field public final synthetic f$1:Lcom/sshtools/common/sftp/SftpFileAttributes;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/common/files/direct/NioFile;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda3;->f$0:Lcom/sshtools/common/files/direct/NioFile;

    iput-object p2, p0, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda3;->f$1:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda3;->f$0:Lcom/sshtools/common/files/direct/NioFile;

    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda3;->f$1:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/files/direct/NioFile;->lambda$setAttributes$2$com-sshtools-common-files-direct-NioFile(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method
