.class Lcom/foxdebug/crashhandler/CrashActivity$2;
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

    .line 240
    iput-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$2;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 243
    iget-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$2;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Lcom/foxdebug/crashhandler/CrashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 244
    iget-object v0, p0, Lcom/foxdebug/crashhandler/CrashActivity$2;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-static {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->-$$Nest$fgetfullReport(Lcom/foxdebug/crashhandler/CrashActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registro de fallos de ANK"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 246
    iget-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$2;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    const-string v0, "Copied report to clipboard!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
