.class Lcom/foxdebug/browser/Browser$4;
.super Lcom/foxdebug/browser/Menu$Callback;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Browser;->createMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/Browser;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Browser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-direct {p0}, Lcom/foxdebug/browser/Menu$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "Console"

    const/4 v4, 0x0

    .line 256
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v6

    goto :goto_1

    .line 246
    :sswitch_0
    const-string v0, "Exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "Open in Browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "Devices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "Disable Cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v4

    :goto_1
    packed-switch p1, :pswitch_data_0

    return-void

    .line 303
    :pswitch_0
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p1}, Lcom/foxdebug/browser/Browser;->exit()V

    return-void

    .line 295
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p2}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgeturl(Lcom/foxdebug/browser/Browser;)Ljava/lang/String;

    move-result-object p2

    .line 297
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 299
    iget-object p2, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    iget-object p2, p2, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 300
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p1}, Lcom/foxdebug/browser/Browser;->exit()V

    return-void

    .line 248
    :pswitch_2
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgetdeviceEmulator(Lcom/foxdebug/browser/Browser;)Lcom/foxdebug/browser/Emulator;

    move-result-object p1

    if-nez p1, :cond_5

    .line 249
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1}, Lcom/foxdebug/browser/Browser;->-$$Nest$mcreateDeviceEmulatorLayout(Lcom/foxdebug/browser/Browser;)V

    .line 252
    :cond_5
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/foxdebug/browser/Browser;->emulator:Z

    .line 253
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 254
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1, v2}, Lcom/foxdebug/browser/Browser;->-$$Nest$msetDesktopMode(Lcom/foxdebug/browser/Browser;Z)V

    .line 255
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p1, v4}, Lcom/foxdebug/browser/Browser;->setConsoleVisible(Z)V

    .line 256
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    invoke-virtual {p1, v3, v5}, Lcom/foxdebug/browser/Menu;->setChecked(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 257
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    invoke-virtual {p1, v3, v5}, Lcom/foxdebug/browser/Menu;->setVisible(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 258
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgetdeviceEmulator(Lcom/foxdebug/browser/Browser;)Lcom/foxdebug/browser/Emulator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/foxdebug/browser/Browser;->addView(Landroid/view/View;)V

    .line 259
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgetdeviceEmulator(Lcom/foxdebug/browser/Browser;)Lcom/foxdebug/browser/Emulator;

    move-result-object p2

    .line 260
    invoke-virtual {p2}, Lcom/foxdebug/browser/Emulator;->getWidthProgress()I

    move-result p2

    iget-object v0, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {v0}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgetdeviceEmulator(Lcom/foxdebug/browser/Browser;)Lcom/foxdebug/browser/Emulator;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/foxdebug/browser/Emulator;->getHeightProgress()I

    move-result v0

    iget-object v1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {v1}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgetdeviceEmulator(Lcom/foxdebug/browser/Browser;)Lcom/foxdebug/browser/Emulator;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Lcom/foxdebug/browser/Emulator;->getScaleProgress()F

    move-result v1

    .line 259
    invoke-static {p1, p2, v0, v1}, Lcom/foxdebug/browser/Browser;->-$$Nest$mfitWebViewTo(Lcom/foxdebug/browser/Browser;IIF)V

    return-void

    .line 265
    :cond_6
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/foxdebug/browser/Menu;->setVisible(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 266
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgetdeviceEmulator(Lcom/foxdebug/browser/Browser;)Lcom/foxdebug/browser/Emulator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/foxdebug/browser/Browser;->removeView(Landroid/view/View;)V

    .line 267
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, v4, v4, p2}, Lcom/foxdebug/browser/Browser;->-$$Nest$mfitWebViewTo(Lcom/foxdebug/browser/Browser;IIF)V

    .line 268
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    .line 269
    invoke-virtual {p1}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/foxdebug/browser/Browser$4$1;

    invoke-direct {p2, p0}, Lcom/foxdebug/browser/Browser$4$1;-><init>(Lcom/foxdebug/browser/Browser$4;)V

    .line 270
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 288
    :pswitch_3
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    .line 289
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 291
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    move v1, v6

    .line 290
    :goto_2
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void

    .line 285
    :pswitch_4
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/foxdebug/browser/Browser;->setConsoleVisible(Z)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x641082c9 -> :sswitch_4
        -0x5c45a7f6 -> :sswitch_3
        -0x3fcebb43 -> :sswitch_2
        -0x1fc0917d -> :sswitch_1
        0x212d3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
