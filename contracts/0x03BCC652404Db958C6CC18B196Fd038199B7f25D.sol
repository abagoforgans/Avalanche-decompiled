contract main {




// =====================  Runtime code  =====================


#
#  - trade(address arg1, address arg2, uint256 arg3)
#
const curvePool = 0x3a43a5851a3e3e0e25a3c1089670269786be1577

const usdc = 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e

const sub_d33953ba(?) = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664


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
    if 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e == arg1:
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
            if 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e == arg2:
                return 1, 1
            return 1, 0
        if arg2 != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                        mem[203 len 25]
        return 1, 1
    if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
            if 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e == arg2:
                return 0, 1
            else:
                return 0
        if arg2 != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                        mem[203 len 25]
        return 0, 1
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
    if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
        if 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e == arg1:
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                require ext_code.size(0x3a43a5851a3e3e0e25a3c1089670269786be1577)
                if 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e == arg2:
                    staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 1, 1, arg3
                else:
                    staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 1, 0, arg3
            else:
                if arg2 != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                mem[203 len 25]
                require ext_code.size(0x3a43a5851a3e3e0e25a3c1089670269786be1577)
                staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 1, 1, arg3
        else:
            if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
                require ext_code.size(0x3a43a5851a3e3e0e25a3c1089670269786be1577)
                if 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e == arg2:
                    staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, 1, arg3
                else:
                    staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, 0, arg3
            else:
                if arg2 != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                                mem[203 len 25]
                require ext_code.size(0x3a43a5851a3e3e0e25a3c1089670269786be1577)
                staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 1, arg3
    else:
        if arg1 != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                        mem[203 len 25]
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg2:
            require ext_code.size(0x3a43a5851a3e3e0e25a3c1089670269786be1577)
            if 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e == arg2:
                staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 1, 1, arg3
            else:
                staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 1, 0, arg3
        else:
            if arg2 != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x734b616c6d794375727665526f757465723a20546f6b656e73206e6f7420737570706f72746564,
                            mem[203 len 25]
            require ext_code.size(0x3a43a5851a3e3e0e25a3c1089670269786be1577)
            staticcall 0x3a43a5851a3e3e0e25a3c1089670269786be1577.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 1, 1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
