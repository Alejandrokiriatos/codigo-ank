.class public final synthetic Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/sftp/Sftp;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$5:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$4:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$5:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$0:Lcom/foxdebug/sftp/Sftp;

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$4:Ljava/util/concurrent/CountDownLatch;

    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda10;->f$5:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v0 .. v5}, Lcom/foxdebug/sftp/Sftp;->lambda$confirmUnknownHost$4$com-foxdebug-sftp-Sftp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
