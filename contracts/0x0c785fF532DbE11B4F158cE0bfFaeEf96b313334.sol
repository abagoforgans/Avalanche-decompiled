contract main {




// =====================  Runtime code  =====================


#
#  - startSaving()
#  - withdrawAllToVault()
#  - withdrawToVault(uint256 arg1)
#
const sub_5f2475ca(?) = 0x1d83fe6a10d2f2b7af17034343746188272cac9

const lendingPoolAddress = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c


address storeAddress;
address underlyingAddress;
address sub_e7e73c3dAddress;
address vaultAddress;
address uniswapRouterV2Address;
address lendingPoolAddress;
uint256 sub_4638bd14;
uint8 sub_cd214c5f;
mapping of uint8 stor8;

function underlyingERC() payable {
    return underlyingAddress
}

function sub_4638bd14(?) payable {
    return sub_4638bd14
}

function unsalvagableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function uniswapRouterV2() payable {
    return uniswapRouterV2Address
}

function underlying() payable {
    return underlyingAddress
}

function store() payable {
    return storeAddress
}

function lendingPool() payable {
    return lendingPoolAddress
}

function sub_cd214c5f(?) payable {
    return bool(sub_cd214c5f)
}

function sub_e7e73c3d(?) payable {
    return sub_e7e73c3dAddress
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getUnderlyingTokenBalance() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    storeAddress = arg1
}

function sub_9adff586(?) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x655468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c6572206f72207661756c74206f7220676f7665726e616e63,
                            mem[222 len 6]
    sub_4638bd14 = arg1
}

function sub_b9d61c11(?) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x655468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c6572206f72207661756c74206f7220676f7665726e616e63,
                            mem[222 len 6]
    sub_cd214c5f = uint8(arg1)
}

function sub_0712f6b3(?) payable {
    require calldata.size - 4 >= 32
    if arg1 == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
        staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    else:
        if arg1 == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
            staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        else:
            if arg1 != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            63,
                            0x65537570706f7274656420416176652061546f6b656e2061646472657373206e6f7420666f756e6420666f72207468697320746f6b656e2061646472657373,
                            mem[227 len 1]
            require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
            staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function investedUnderlyingBalance() payable {
    if underlyingAddress == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
        staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    else:
        if underlyingAddress == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
            staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        else:
            if underlyingAddress != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            63,
                            0x65537570706f7274656420416176652061546f6b656e2061646472657373206e6f7420666f756e6420666f72207468697320746f6b656e2061646472657373,
                            mem[227 len 1]
            require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
            staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function salvage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if stor8[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe746f6b656e20697320646566696e6564206173206e6f742073616c76616761626c,
                    mem[198 len 30]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
