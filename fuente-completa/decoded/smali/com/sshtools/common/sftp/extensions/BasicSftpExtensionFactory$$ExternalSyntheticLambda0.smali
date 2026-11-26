.class public final synthetic Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashMap;

    check-cast p1, Lcom/sshtools/common/sftp/SftpExtension;

    invoke-static {v0, p1}, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory;->lambda$new$0(Ljava/util/HashMap;Lcom/sshtools/common/sftp/SftpExtension;)V

    return-void
.end method
