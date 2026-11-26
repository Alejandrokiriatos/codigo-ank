.class public final synthetic Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/tasks/PullTask;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$11:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:I

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:Ljava/nio/file/Path;

.field public final synthetic f$9:Lcom/sshtools/common/sftp/SftpFileAttributes;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/tasks/PullTask;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;IJJJLjava/nio/file/Path;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/client/tasks/PullTask;

    iput-object p2, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput p5, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$4:I

    iput-wide p6, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$5:J

    iput-wide p8, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$6:J

    iput-wide p10, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$7:J

    iput-object p12, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$8:Ljava/nio/file/Path;

    iput-object p13, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$9:Lcom/sshtools/common/sftp/SftpFileAttributes;

    iput-object p14, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$10:Ljava/lang/String;

    iput-object p15, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$11:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/client/tasks/PullTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iget v4, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$4:I

    iget-wide v5, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$5:J

    iget-wide v7, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$6:J

    iget-wide v9, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$7:J

    iget-object v11, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$8:Ljava/nio/file/Path;

    iget-object v12, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$9:Lcom/sshtools/common/sftp/SftpFileAttributes;

    iget-object v13, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$10:Ljava/lang/String;

    iget-object v14, p0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;->f$11:Ljava/util/List;

    invoke-virtual/range {v0 .. v14}, Lcom/sshtools/client/tasks/PullTask;->lambda$receiveChunks$1$com-sshtools-client-tasks-PullTask(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;IJJJLjava/nio/file/Path;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
