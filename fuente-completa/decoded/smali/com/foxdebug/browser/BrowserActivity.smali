.class public Lcom/foxdebug/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# instance fields
.field private browser:Lcom/foxdebug/browser/Browser;

.field private theme:Lcom/foxdebug/system/Ui$Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setNavigationBarStyle(Landroid/view/Window;)V
    .locals 3

    .line 146
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/foxdebug/browser/BrowserActivity;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-virtual {v1}, Lcom/foxdebug/system/Ui$Theme;->getType()Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, -0x7ffffff0

    or-int/2addr v0, v1

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private setStatusBarStyle(Landroid/view/Window;)V
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/foxdebug/browser/BrowserActivity;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-virtual {v1}, Lcom/foxdebug/system/Ui$Theme;->getType()Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v2, "light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x2000

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private setSystemTheme(I)V
    .locals 8

    .line 88
    const-string v0, "BrowserActivity"

    const/16 v1, 0x12

    :try_start_0
    invoke-static {p0, v1}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/foxdebug/system/Ui$Icons;->setSize(I)V

    .line 89
    invoke-virtual {p0}, Lcom/foxdebug/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v2, -0x80000000

    .line 92
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setNavigationBarColor"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 98
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setStatusBarColor"

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge p1, v2, :cond_0

    .line 107
    invoke-direct {p0, v1}, Lcom/foxdebug/browser/BrowserActivity;->setStatusBarStyle(Landroid/view/Window;)V

    .line 108
    invoke-direct {p0, v1}, Lcom/foxdebug/browser/BrowserActivity;->setNavigationBarStyle(Landroid/view/Window;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserActivity;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-virtual {p1}, Lcom/foxdebug/system/Ui$Theme;->getType()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {v1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 116
    const-string v2, "light"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v2, 0x18

    if-eqz p1, :cond_1

    .line 117
    invoke-interface {v1, v2, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v1, v7, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    :try_start_2
    const-string v1, "Failed applying system bar theme values."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 123
    const-string v1, "Invalid system bar color or appearance input."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 128
    const-string v1, "Failed to apply system theme."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    iget v0, v0, Lcom/foxdebug/browser/Browser;->FILE_SELECT_CODE:I

    if-ne p1, v0, :cond_1

    .line 165
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->filePathCallback:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 170
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    .line 169
    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/foxdebug/browser/Browser;->filePathCallback:Landroid/webkit/ValueCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    invoke-virtual {v0}, Lcom/foxdebug/browser/Browser;->goBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    invoke-virtual {v0}, Lcom/foxdebug/browser/Browser;->exit()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/foxdebug/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 29
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "theme"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v2, "onlyConsole"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 34
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/foxdebug/system/Ui$Theme;

    invoke-direct {v1, v2}, Lcom/foxdebug/system/Ui$Theme;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/foxdebug/browser/BrowserActivity;->theme:Lcom/foxdebug/system/Ui$Theme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    new-instance v1, Lcom/foxdebug/system/Ui$Theme;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v1, v2}, Lcom/foxdebug/system/Ui$Theme;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/foxdebug/browser/BrowserActivity;->theme:Lcom/foxdebug/system/Ui$Theme;

    .line 40
    :goto_0
    new-instance v1, Lcom/foxdebug/browser/Browser;

    iget-object v2, p0, Lcom/foxdebug/browser/BrowserActivity;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/foxdebug/browser/Browser;-><init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    .line 41
    invoke-virtual {v1, v0}, Lcom/foxdebug/browser/Browser;->setUrl(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/BrowserActivity;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/foxdebug/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/foxdebug/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/foxdebug/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 56
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserActivity;->browser:Lcom/foxdebug/browser/Browser;

    new-instance v0, Lcom/foxdebug/browser/BrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/foxdebug/browser/BrowserActivity$1;-><init>(Lcom/foxdebug/browser/BrowserActivity;)V

    invoke-virtual {p1, v0}, Lcom/foxdebug/browser/Browser;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 74
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserActivity;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v0, "primaryColor"

    invoke-virtual {p1, v0}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/foxdebug/browser/BrowserActivity;->setSystemTheme(I)V

    return-void
.end method
