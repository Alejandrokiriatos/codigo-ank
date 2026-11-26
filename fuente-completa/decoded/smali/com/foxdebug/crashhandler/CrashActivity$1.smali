.class Lcom/foxdebug/crashhandler/CrashActivity$1;
.super Ljava/lang/Object;
.source "CrashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/crashhandler/CrashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/crashhandler/CrashActivity;


# direct methods
.method constructor <init>(Lcom/foxdebug/crashhandler/CrashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$1;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$1;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-virtual {p1}, Lcom/foxdebug/crashhandler/CrashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/foxdebug/crashhandler/CrashActivity$1;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-virtual {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x10008000

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v0, p0, Lcom/foxdebug/crashhandler/CrashActivity$1;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-virtual {v0, p1}, Lcom/foxdebug/crashhandler/CrashActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$1;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-virtual {p1}, Lcom/foxdebug/crashhandler/CrashActivity;->finish()V

    const/4 p1, 0x0

    .line 234
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
