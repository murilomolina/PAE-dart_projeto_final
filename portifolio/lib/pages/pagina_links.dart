import 'package:flutter/material.dart';
import 'package:portifolio/widgets/links_widget.dart';
import 'package:portifolio/widgets/sidebar.dart';

class PaginaLinks extends StatelessWidget {
  final String urlGit = 'https://github.com/murilomolina';
  final String urlLinkedin =
      'https://www.linkedin.com/in/murilo-molina-barone-8a144ba1/';

  final String gitImage ='data:image/png;base64,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';
  final String linkedinImage ='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAeFBMVEX///8AdLUAcrQAcbQAbLEAb7MAZ68AaLA0grtWksO80OQofbkAarEAa7Frncmiv9thmMZFib/r8/iGrdHP4O35+vxRj8J9qM6mxN4AZK4Sd7aau9nH2enl7fXc5/HT4e6RtdWwyeB0pMzx9/u0zeMAXavB1eeLstTqUS3aAAAIJUlEQVR4nO2ca7uqKhCAEwGtpLIys+y+Tv3/f3i66DCotTZm5W7P+23x4IVXwWFg1ekQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBPGX0hv5TzIbfroN7yIMXPYkLherTzfjLYTCaQAmPt2Od3D0mnDlOGr56Za8gb3bjCwWfrolb6DblKz+p1vyBkiWBSTLAkOWy5Xi9ezZy1r1dukrWvRCkCzmhfM03c3kM7KmvZzjw+uuQslVILf2d7z+ya/wY3/wH5NCO9AT1bKYyIo3jNWXNZL8RuA/updNcruumlk3Y5lkV+D/WR/754RBdhGvqwtBFuPjvOzg2tvKZQ3gfI9iiUjlV+CxbTOGPL+mtD3Ughm0Y6QLQZZC3SYNXizrpKcNycGyGS2QZQ7QvvWrZSdroQ/kO8tmtECWOOGqS+sJo50s9A0xL/wHtECW+YB/uGNJfVlby2a0QdYcV92p18oKdcASPA4xyrRAlrvHVScv7ob6YTBu24wWyGIKV7WPHexkdfz8aSQ922a0QJYjJrpwaz1k2cqK/ODyPNzEPiHdBlmOhCG+V2PCYymr05n3ExkM1vbNaIUsR+6v8WEU15kcWss6YxuO3miHLEfIMI5nslZSvo6serRE1nkMEaJmfusflFUfkkWynpHFzv1UiKog7AWy1mmvl66jYrG9rNX0WHkmg2hzrZT/+YssVwJZmYKCqx7GPbe7n0z2o75URcd2ssaJm+Fl6c6JygrkNQUZzWcyUJyrIOmfzNXualnj82ibIRIUkKQTXwa3M8lFPL2n89RPlDrXCaS/HP8uy0WFtxYrferZ2VbQH8JdR+lAmrosZcl85V9lEfxE5AUXWSdPPw0mkgF+KSplRQu9ByHZQPHWVbgfCG9RNWFYnyMAhi93+FUWSp/eWhwgWa5YFCa8h66RIbSUBevgHGRlBWdZG7cwgxAcvSuVsnz96BK40Z3ixRGDeWGpN8ZJoZsI7/iULGnMs29s8cp/c7KmaeKUkLorVsnq6tjQgwnUyKsaXN3CHpaoX57bsaQ3qi/L31Y1eYIu05gsMa/KabPFI1mxzigpmOL6d4JrFmBbkVP5heOQy7WXdSeb2dePrjFZTnUbOWw8Kcta6lecQ9Pw7iBmfMKZU92Eauxl3SHVT7Q5WXfuGVJIJVk93W0FXHSrb01IP97Gvu6UYqBbii/LBOe8GBg1JgstPDQuixVyarD6VJS10a5c6KwrKGRJfJuwr304EGKLFOe3ZTgZ7oZx3zM6ZnOyttDEhmVx6XdDpZAvSOUWZK0C9NWHL50enwMdSIzya0BbdSc8O83XTdcj48tVV9ZqXdgNOYXBuFFZIguHelUjjSkrcnR79cg9hhdL4kbACl9yE6PXR5naoHo4oVdP1nogvUC6xsJGBGdtUpaAW8Fr4zKqktVHAZZuL9TB+d9zj83lZJ+LLpxdmlnIo7ZVS9bwFroxb4BLoTENymJolwRaGw/WFbJmaGkbBeeweiTNEDTvdreb04+6tMkz1uNLDVk/8GJ7eIUxfIEsifu6HlVUWpa11988D7c3t4AbZVzlOtwd86OZW7zBCG6wjiw0jOIz64G0MVn47vDaOP8pyhJLFIziDSbrAGqY153nx15fU/g8VSz06nbYy5qjYD1AO5b2zcvixlxXf0LUrigLxa/CMKzjPyENuHEReNIBHt1vwJp8DVkzFHvg5wB9uzlZ3vhOzXlJFsDMbV6/7z7glxkkfBxlOdUFL2cNWXg5HydzXiArMWrqQbhClh4aFkZzf5d1feALkFW+w0N+h/ayDnh1DGtoXpYxc+ugPSRlWawP9+QaV9v9LusyxMGnXHVKPCFrZcS06NP+AlkLs+oDWYGe1KBsw5ner/tarrKcB2/W+AlZOG2C9719VJbsDLWVBCUnNzoyF9UElzwKjFleebl3U3/MaqsslPVjwbh8etadxJXsL1/0EXTD8h7zef2vYWtldcoZtQv5C1eMs0x0wrG8C/iJtHJ7ZaEEDYq1YNdZIYI30bFUaYRf6UnvF8nqLNHsEdLv0Inko80nYzi3Od/GWt4jy+kPl2XmjcvC8TIk9SBFI4oLLUvcMfWmbGmOWugJvEeWU/ERUn7zsiJRkf2D5EvBwlB6SB+KxyRe6Vs+lc+qJauCvG82KcvIK+d9fwOHechWNDi3g/s62kfrinKQJzumIQ7TvkwWXpzg+eADKWRH7rOYYnVS10JXQKYPL7u50o+H8+WeBUby/9tk4Z3iMjtfpF8aIfv7STxyPOivCaTkfHy7l9UdUdx7/HWyIrSykacOUee8bv4xJPyXv1sHVXADh3ytrM5Um4Hjj8nd9VM0NVpXb6BlYOv7ZHVOKCOYt25a2heVVRA417euquU6T+SzWi/L+AeXPDY9dGXpbphICnObQxgUhylvFkVvyTqI4m+vGL/Dksu6vz+rJCsvB1kKNmLhJkMpQ2tiaSjxjmImlJqMO0V6iwDHal6/d8ng5bf8+TcLzlfOlBZkQU2Ry9IJaFwvRQk/oSc5q+XM89SZIPCC8HTnX9jT2JG3StI/XVUffuuGUUa+8y+FkpURpvV1zbi4YNFGxpvj8ZiuH/+PwuFSafr494f+bE+pmXlkpZrtltUY9CMYFpAsC0iWBSTLApJlgd5b8xwVOf/vI23mZ+xYUg6Mv5BGfiDRlX/brzvVZJYo/hwq6f4T79WFVe9J0nr/7EwQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQfwv/A8hzoN26FDjnAAAAAElFTkSuQmCC';

  const PaginaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meus Links'),
      ),
      drawer: const Sidebar(),
      body: Container(
        color: const Color.fromARGB(255, 2, 36, 63),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinksWidget(
                url: urlGit,
                imageurl: gitImage,
              ),
              LinksWidget(
                url: urlLinkedin,
                imageurl: linkedinImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

