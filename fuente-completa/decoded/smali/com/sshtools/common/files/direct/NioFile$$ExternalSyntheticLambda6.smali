.class public final synthetic Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/common/files/direct/NioFile;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/common/files/direct/NioFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda6;->f$0:Lcom/sshtools/common/files/direct/NioFile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda6;->f$0:Lcom/sshtools/common/files/direct/NioFile;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/files/direct/NioFile;->lambda$setAttributes$1$com-sshtools-common-files-direct-NioFile(Ljava/lang/Integer;)V

    return-void
.end method
