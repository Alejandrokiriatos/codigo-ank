.class Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessDetails"
.end annotation


# instance fields
.field final alpine:Z

.field final command:Ljava/lang/String;

.field final pid:J

.field final startedAt:J


# direct methods
.method constructor <init>(Ljava/lang/String;ZJ)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;->command:Ljava/lang/String;

    .line 235
    iput-boolean p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;->alpine:Z

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;->startedAt:J

    .line 237
    iput-wide p3, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;->pid:J

    return-void
.end method
