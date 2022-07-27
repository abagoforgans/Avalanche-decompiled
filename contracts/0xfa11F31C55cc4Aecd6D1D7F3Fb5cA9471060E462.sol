contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - deposit(uint256 arg1)
#
const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05


uint256 stor0;
uint8 stor1; offset 160
address owner;
address coreAddress;
address sub_49401a3cAddress;
address sub_ec8d2f40Address;
address sub_2eb0d4d7Address;
address sub_7ec435f1Address;
address sub_1d2091bfAddress;
address sub_e7f67fb1Address;
address sub_56704e41Address;
array of address sub_f8f80f05;
uint256 sub_1aedeabe;
uint16 stor12;
uint256 sub_aa17cf49;
uint256 stakingPoolId;
uint256 sub_e4d8ce8e;
uint256 sub_680f2f20;
uint8 sub_67c13d27;
uint8 sub_f8c389d7; offset 8
uint8 sub_1c39e6d9; offset 16
uint256 stor16; offset 8

function sub_1aedeabe(?) {
    return sub_1aedeabe
}

function sub_1c39e6d9(?) {
    return bool(sub_1c39e6d9)
}

function sub_1d2091bf(?) {
    return sub_1d2091bfAddress
}

function sub_2eb0d4d7(?) {
    return sub_2eb0d4d7Address
}

function sub_49401a3c(?) {
    return sub_49401a3cAddress
}

function sub_56704e41(?) {
    return sub_56704e41Address
}

function paused() {
    return bool(stor1)
}

function sub_67c13d27(?) {
    return bool(sub_67c13d27)
}

function sub_680f2f20(?) {
    return sub_680f2f20
}

function sub_7ec435f1(?) {
    return sub_7ec435f1Address
}

function owner() {
    return owner
}

function stakingPoolId() {
    return stakingPoolId
}

function sub_aa17cf49(?) {
    return uint256(sub_aa17cf49)
}

function sub_e4d8ce8e(?) {
    return sub_e4d8ce8e
}

function sub_e7f67fb1(?) {
    return sub_e7f67fb1Address
}

function sub_ec8d2f40(?) {
    return sub_ec8d2f40Address
}

function core() {
    return coreAddress
}

function sub_f8c389d7(?) {
    return bool(sub_f8c389d7)
}

function sub_f8f80f05(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_f8f80f05.length
    return sub_f8f80f05[arg1]
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b47c9894(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    sub_e4d8ce8e = arg1
    emit 0x64b6a0a9: arg1
}

function sub_bea8a0e6(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    sub_680f2f20 = arg1
    emit 0x7b7ed2dc: arg1
}

function setCore(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function sub_bed84191(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    sub_67c13d27 = uint8(arg1)
    emit 0x42a88629: arg1
}

function sub_98869ded(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    stor16 = Mask(248, 0, arg1)
    emit 0xe823fcd2: arg1
}

function sub_e9129989(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    if not arg1:
        revert with 0, 'address cannot be set to 0x0'
    sub_56704e41Address = arg1
    emit 0x95f123bf: arg1
}

function setSlippage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    if arg1 >= 10:
        revert with 0, 'Slippage value is too big'
    sub_1aedeabe = arg1
    emit 0x3facf137: arg1
}

function setDexRouter(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x79436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    if not arg1:
        revert with 0, 'address cannot be set to 0x0'
    sub_e7f67fb1Address = arg1
    emit 0x58933a65: arg1
}

function pause() {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x77436f72655265663a3a6f6e6c79477561726469616e4f72476f7665726e6f723a2043616c6c6572206973206e6f74206120677561726469616e206f7220676f7665726e6f,
                        mem[233 len 27]
    if stor1:
        revert with 0, 'Pausable: paused'
    stor1 = 1
    emit Paused(msg.sender);
}

function unpause() {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x77436f72655265663a3a6f6e6c79477561726469616e4f72476f7665726e6f723a2043616c6c6572206973206e6f74206120677561726469616e206f7220676f7665726e6f,
                        mem[233 len 27]
    if not stor1:
        revert with 0, 'Pausable: not paused'
    stor1 = 0
    emit Unpaused(msg.sender);
}

function sub_c34c7164(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x79436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'address cannot be set to 0x0'
        idx = idx + 1
        continue 
    sub_f8f80f05.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_f8f80f05.length > idx:
            sub_f8f80f05[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_f8f80f05[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_f8f80f05.length > idx:
            sub_f8f80f05[idx] = 0
            idx = idx + 1
            continue 
    emit 0x605d76c7: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)])
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x79436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    if sub_49401a3cAddress == arg1:
        revert with 0, '!safe'
    if sub_2eb0d4d7Address == arg1:
        revert with 0, '!safe'
    if sub_7ec435f1Address == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_f5bfe88d(?) {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(sub_56704e41Address)
    staticcall sub_56704e41Address.duration() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_56704e41Address)
    staticcall sub_56704e41Address.0x27e79c44 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < 2 * ext_call.return_data[0]:
        revert with 0, 'cycle not expired'
    require ext_code.size(sub_ec8d2f40Address)
    staticcall sub_ec8d2f40Address.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stakingPoolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_ec8d2f40Address)
    call sub_ec8d2f40Address.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakingPoolId, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if bool(sub_f8c389d7) != 1:
        if eth.balance(this.address) <= sub_680f2f20:
            revert with 0, 'not enough gas!'
        call sub_1d2091bfAddress with:
           value sub_680f2f20 wei
             gas gas_remaining wei
            args 0, mem[1388 len 4]
        if bool(ext_call.success) != 1:
            revert with 0, 'redeemLocal failed!'
    else:
        require ext_code.size(sub_1d2091bfAddress)
        call sub_1d2091bfAddress.0xc4de93a5 with:
             gas gas_remaining wei
            args uint16(stor12), ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_1c39e6d9 = 1
    stor0 = 1
}



}
