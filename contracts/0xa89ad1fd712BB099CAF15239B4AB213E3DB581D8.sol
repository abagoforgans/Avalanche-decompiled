contract main {




// =====================  Runtime code  =====================


#
#  - trade(address arg1, address arg2, uint256 arg3)
#
const curvePool = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e

const usdt = 0xc7198437980c041c805a1edcba50c1ce5db95118

const usdc = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const frax = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64

const basePool = 0xe013593cea239e445d2271106836b00c9e7356ae

const dai = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70


mapping of uint8 stor0;
mapping of uint8 stor1;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceWhitelisted() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor0[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2157686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2157686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor0[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor0[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2157686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function sub_f185f0ca(?) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x654b616c6d794375727665526f757465723a2044657374696e6174696f6e20746f6b656e2063616e206e6f7420626520736f7572636520746f6b65,
                    mem[223 len 5]
    if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
        if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 3, 3
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                return 3, 2
            if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                return 3, 1
            return 3, 0
        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 3, 3
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                return 3, 2
            return 3, 1
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 3, 3
            return 3, 2
        if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                        mem[203 len 25]
        return 3, 3
    if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
        if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 2, 3
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                return 2, 2
            if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                return 2, 1
            return 2, 0
        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 2, 3
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                return 2, 2
            return 2, 1
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 2, 3
            return 2, 2
        if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                        mem[203 len 25]
        return 2, 3
    if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg1:
        if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 1, 3
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                return 1, 2
            if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                return 1, 1
            return 1, 0
        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 1, 3
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                return 1, 2
            return 1, 1
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 1, 3
            return 1, 2
        if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                        mem[203 len 25]
        return 1, 3
    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg1:
        if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 0, 3
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                return 0, 2
            if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                return 0, 1
            else:
                return 0
        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 0, 3
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                return 0, 2
            return 0, 1
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                return 0, 3
            return 0, 2
        if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                        mem[203 len 25]
        return 0, 3
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                39,
                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                mem[203 len 25]
}

function sub_1eac74b3(?) {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x654b616c6d794375727665526f757465723a2044657374696e6174696f6e20746f6b656e2063616e206e6f7420626520736f7572636520746f6b65,
                    mem[223 len 5]
    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg1:
        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg1:
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                else:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 2, 3, arg3
            else:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                else:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 1, 3, arg3
        else:
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                else:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 2, 3, arg3
            else:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                else:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 0, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 0, 3, arg3
    else:
        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg1:
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                else:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 2, 3, arg3
            else:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                else:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 1, 3, arg3
        else:
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 3, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                else:
                    if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 0, arg3
                    else:
                        if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg3
                        else:
                            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 3, arg3
                                else:
                                    staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args 2, 2, arg3
                            else:
                                if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                                mem[203 len 25]
                                require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 2, 3, arg3
            else:
                if arg1 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                mem[203 len 25]
                if 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64 == arg2:
                    require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                    if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                            else:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 2, arg3
                        else:
                            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                            else:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 1, arg3
                    else:
                        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                            else:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 2, arg3
                        else:
                            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                            else:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 0, arg3
                else:
                    if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg2:
                        require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                            else:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 2, arg3
                        else:
                            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                            else:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 1, arg3
                    else:
                        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg2:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 3, arg3
                            else:
                                staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args 3, 2, arg3
                        else:
                            if arg2 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            39,
                                            0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                            mem[203 len 25]
                            require ext_code.size(0xe013593cea239e445d2271106836b00c9e7356ae)
                            staticcall 0xe013593cea239e445d2271106836b00c9e7356ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 3, 3, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
