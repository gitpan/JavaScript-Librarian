use inc::Module::Install;

name           ( 'JavaScript-Librarian'             );
abstract       ( 'Load and use libraries of JavaScript packages' );
author         ( 'Adam Kennedy<adam@ali.as>'        );
version_from   ( 'lib/JavaScript/Librarian.pm'      );

requires       ( 'perl'                  => '5.005' );
requires       ( 'File::Spec'            => '0.82'  );
requires       ( 'URI'                   => '1.33'  );
requires       ( 'Clone'                 => '0.13'  );
requires       ( 'Algorithm::Dependency' => '1.02'  );
requires       ( 'Params::Coerce'         => '0.06'  );

build_requires ( 'Test::More'            => '0.47'  );

auto_install();

&WriteAll;
