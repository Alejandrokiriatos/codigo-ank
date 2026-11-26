.class public final synthetic Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    invoke-static {v0}, Lcom/sshtools/client/sftp/SftpClient;->lambda$new$1(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v0

    return-object v0
.end method
