function navigateTo(section) {
    switch (section) {
        case 'home':
            window.location.href = 'index.html';
            break;
        case 'discord':
            window.open('https://www.discord.com/', '_blank');
            break;
        case 'about':
            window.location.href = 'about/index.html';
            break;
        case 'work':
            window.location.href = 'work/index.html';
            break;
        case 'github':
            window.open('https://github.com/bandileon/', '_blank');
            break;
        case 'back':
            window.location.href = 'index.html';
            break;
        default:
            console.log('Invalid section');
    }
}
