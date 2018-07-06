import dotbot
import os
import subprocess


class Nix(dotbot.Plugin):
    _nixDirective = "nix"

    def can_handle(self, directive):
        return directive in (self._nixDirective)

    def handle(self, directive, data):
        if directive == self._nixDirective:
            self._bootstrap_nix()
            return self._process_data(data)
        raise ValueError('nix cannot handle directive %s' % directive)

    def _process_data(self, data):
        success = self._install(data)
        if success:
            self._log.info('All packages have been installed')
        else:
            self._log.error('Some packages were not installed')
        return success

    def _install(self, packages_list):
        cwd = self._context.base_directory()
        log = self._log
        with open(os.devnull, 'w') as devnull:
            stdin = stdout = stderr = devnull
            for package in packages_list:
                log.info("Installing %s" % package)
                cmd = "nix-env -i %s" % (package)
                result = subprocess.call(cmd, shell=True, stdin=stdin, stdout=stdout, stderr=stderr, cwd=cwd)
                if result != 0:
                    log.warning('Failed to install [%s]' % package)
                    return False
            return True

    def _bootstrap(self, cmd):
        with open(os.devnull, 'w') as devnull:
            stdin = stdout = stderr = devnull
            subprocess.call(cmd, shell=True, stdin=stdin, stdout=stdout, stderr=stderr,
                            cwd=self._context.base_directory())

    def _bootstrap_nix(self):
        cmd = """hash nix || {{ curl https://nixos.org/nix/install | sh
              . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
              }}"""
        self._bootstrap(cmd)
