.class public final synthetic Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/sftp/Sftp;

.field public final synthetic f$1:Lorg/json/JSONArray;

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;JZLcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$1:Lorg/json/JSONArray;

    iput-wide p3, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$2:J

    iput-boolean p5, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p6, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$4:Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$0:Lcom/foxdebug/sftp/Sftp;

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$1:Lorg/json/JSONArray;

    iget-wide v2, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$2:J

    iget-boolean v4, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda1;->f$4:Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;

    invoke-virtual/range {v0 .. v5}, Lcom/foxdebug/sftp/Sftp;->lambda$startProfileConnection$10$com-foxdebug-sftp-Sftp(Lorg/json/JSONArray;JZLcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
