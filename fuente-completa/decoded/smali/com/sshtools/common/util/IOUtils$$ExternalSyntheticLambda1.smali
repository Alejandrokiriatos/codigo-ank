.class public final synthetic Lcom/sshtools/common/util/IOUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Ljava/nio/file/FileVisitOption;


# direct methods
.method public synthetic constructor <init>([Ljava/nio/file/FileVisitOption;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/util/IOUtils$$ExternalSyntheticLambda1;->f$0:[Ljava/nio/file/FileVisitOption;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/util/IOUtils$$ExternalSyntheticLambda1;->f$0:[Ljava/nio/file/FileVisitOption;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lcom/sshtools/common/util/IOUtils;->lambda$recursiveContentsDelete$0([Ljava/nio/file/FileVisitOption;Ljava/nio/file/Path;)V

    return-void
.end method
