contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const sub_67021333(?) = 10000

const Router = 0xe54ca86531e17ef3616d22ca28b0d458b6c891

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


uint8 stor0; offset 160
address owner;
uint32 stor2;
address masterChefAddress;
uint256 stor2;
address rewardTokenAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address lPtokenAddress;
address sub_f0fe082aAddress;
uint8 stor7;
uint8 poolID; offset 160
address sub_96a8797eAddress;
address sub_c9f801c7Address;
address sub_69d463d5Address;
array of struct sub_e7063750;
array of address sub_bb00b32d;
array of address sub_2b3a0910;

function sub_2b3a0910(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2b3a0910.length
    return sub_2b3a0910[arg1]
}

function Vault() {
    return address(vaultAddress)
}

function paused() {
    return bool(stor0)
}

function sub_69d463d5(?) {
    return sub_69d463d5Address
}

function poolID() {
    return poolID
}

function owner() {
    return owner
}

function sub_96a8797e(?) {
    return sub_96a8797eAddress
}

function sub_bb00b32d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bb00b32d.length
    return sub_bb00b32d[arg1]
}

function LPtoken() {
    return lPtokenAddress
}

function sub_c9f801c7(?) {
    return sub_c9f801c7Address
}

function sub_e7063750(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e7063750.length
    return sub_e7063750[arg1].field_0
}

function MasterChef() {
    return address(masterChefAddress)
}

function sub_f0fe082a(?) {
    return sub_f0fe082aAddress
}

function RewardToken() {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setProtocolAddresses(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_c9f801c7Address = arg1
    emit ProtocolAddressesUpdated(arg1);
}

function sub_3fd59465(?) {
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9a3f190b(?) {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2f390dc3(?) {
    require ext_code.size(address(masterChefAddress))
    staticcall address(masterChefAddress).0xf90a25be with:
            gas gas_remaining wei
           args stor7, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4fed3148(?) {
    require ext_code.size(address(masterChefAddress))
    staticcall address(masterChefAddress).userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor7, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_cc85d60b(?) {
    require ext_code.size(address(masterChefAddress))
    staticcall address(masterChefAddress).userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor7, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function deposit() {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x734d617374657243686566537472617465677956313a204465706f7369742063616c6c6564207769746820302062616c616e63,
                    mem[215 len 13]
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(masterChefAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(lPtokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 31, ext_call.return_data[0]) >> 31
    mem[324 len 0] = 0
    call lPtokenAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(masterChefAddress))
    call address(masterChefAddress).deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(ext_call.return_data[0]);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Caller is not the Vault'
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(masterChefAddress))
        call address(masterChefAddress).withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor7, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lPtokenAddress)
        staticcall lPtokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(lPtokenAddress):
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[0] <= arg1:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        call lPtokenAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
        call lPtokenAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    emit Withdraw(arg1);
}

function sub_0e907e52(?) {
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Caller is not the Vault'
    require ext_code.size(address(masterChefAddress))
    call address(masterChefAddress).deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor7, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(masterChefAddress))
        call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
             gas gas_remaining wei
            args poolID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lPtokenAddress)
        staticcall lPtokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(lPtokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        call lPtokenAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[132] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    mem[164] = 2 * ext_call.return_data[0]
    mem[96] = 68
    mem[132 len 28] = 0xe54ca86531e17ef3616d22ca28b0d4
    mem[128 len 4] = approve(address rg1, uint256 rg2)
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
    mem[352 len 4] = 0
    mem[324 len 0] = 0
    call rewardTokenAddress.0x58b6c891 with:
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if block.timestamp + 120 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[264] = ext_call.return_data[0]
        mem[296] = 0
        mem[360] = this.address
        mem[392] = block.timestamp + 120
        mem[328] = 160
        mem[424] = sub_e7063750.length
        if not sub_e7063750.length:
            require ext_code.size(0x64000000000000000000000000e54ca86531e17ef3616d22ca28b0d458b6c891)
            call ????????????????????????????????????????.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 260
            require return_data.size >= 32
            _1568 = mem[260 len 4], ext_call.return_data[0 len 28]
            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
            _1579 = mem[_1568 + 260]
            mem[ceil32(return_data.size) + 292 len floor32(mem[_1568 + 260])] = mem[_1568 + 292 len floor32(mem[_1568 + 260])]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c9f801c7Address)
            call sub_c9f801c7Address.0xe2af7177 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _1579) + ceil32(return_data.size) + 328] = ext_call.return_data[12 len 20]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1579) + ceil32(return_data.size) + 562 len 26]
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1579) + ceil32(return_data.size) + 456 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _1579) + ceil32(return_data.size) + 356 len 4] with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, mem[(32 * _1579) + ceil32(return_data.size) + 520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1579) + ceil32(return_data.size) + 566 len 22]
                emit 0xec0dee9b: ext_call.return_data[0]
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolID
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1579) + ceil32(return_data.size) + 726 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1579) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call lPtokenAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1579) + ceil32(return_data.size) + 684 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1579) + ceil32(return_data.size) + 730 len 22]
                else:
                    mem[(32 * _1579) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1579) + ceil32(return_data.size) + 652]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                if stor0:
                    revert with 0, 'Pausable: paused'
                stor0 = 1
                emit Paused(msg.sender);
            mem[(32 * _1579) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                emit 0xec0dee9b: ext_call.return_data[0]
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolID
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 0] = 0
                call lPtokenAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                else:
                    mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 732 len 22]
                if stor0:
                    revert with 0, 'Pausable: paused'
                stor0 = 1
                emit Paused(msg.sender);
            require return_data.size >= 32
            if not mem[(32 * _1579) + ceil32(return_data.size) + 488]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            emit 0xec0dee9b: ext_call.return_data[0]
            require ext_code.size(address(masterChefAddress))
            call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
            mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
            call lPtokenAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                if stor0:
                    revert with 0, 'Pausable: paused'
                stor0 = 1
                emit Paused(msg.sender);
            mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
            mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _1579) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                    mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 626] = 32
                    mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 658] = 42
                    mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _1579) + (4 * ceil32(return_data.size)) + 622
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if not stor0:
                stor0 = 1
                mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                emit Paused(mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
            mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 626] = 32
            mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 658] = 16
            mem[(32 * _1579) + (4 * ceil32(return_data.size)) + 690] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
            revert with memory
              from (32 * _1579) + (4 * ceil32(return_data.size)) + 622
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        mem[0] = 10
        mem[456] = address(sub_e7063750.field_0)
        idx = 456
        s = 0
        while (32 * sub_e7063750.length) + 456 > idx + 32:
            mem[idx + 32] = sub_e7063750[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x64000000000000000000000000e54ca86531e17ef3616d22ca28b0d458b6c891)
        call ????????????????????????????????????????.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length, mem[456 len 32 * sub_e7063750.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 260
        require return_data.size >= 32
        _4177 = mem[260 len 4], ext_call.return_data[0 len 28]
        require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
        _4212 = mem[_4177 + 260]
        mem[ceil32(return_data.size) + 292 len floor32(mem[_4177 + 260])] = mem[_4177 + 292 len floor32(mem[_4177 + 260])]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c9f801c7Address)
        call sub_c9f801c7Address.0xe2af7177 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _4212) + ceil32(return_data.size) + 328] = ext_call.return_data[12 len 20]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _4212) + ceil32(return_data.size) + 562 len 26]
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _4212) + ceil32(return_data.size) + 456 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        mem[(32 * _4212) + ceil32(return_data.size) + 520 len 0] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _4212) + ceil32(return_data.size) + 356 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4212) + ceil32(return_data.size) + 520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
            if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _4212) + ceil32(return_data.size) + 566 len 22]
            emit 0xec0dee9b: ext_call.return_data[0]
            require ext_code.size(address(masterChefAddress))
            call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _4212) + ceil32(return_data.size) + 726 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _4212) + ceil32(return_data.size) + 620 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
            call lPtokenAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(32 * _4212) + ceil32(return_data.size) + 556 len 28], mem[(32 * _4212) + ceil32(return_data.size) + 684 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _4212) + ceil32(return_data.size) + 730 len 22]
            else:
                mem[(32 * _4212) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _4212) + ceil32(return_data.size) + 652]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
            if stor0:
                revert with 0, 'Pausable: paused'
            stor0 = 1
            emit Paused(msg.sender);
        mem[(32 * _4212) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _4212) + ceil32(return_data.size) + 488]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            emit 0xec0dee9b: ext_call.return_data[0]
            require ext_code.size(address(masterChefAddress))
            call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
            call lPtokenAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 28], mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
            else:
                mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 732 len 22]
            if stor0:
                revert with 0, 'Pausable: paused'
            stor0 = 1
            emit Paused(msg.sender);
        emit 0xec0dee9b: ext_call.return_data[0]
        require ext_code.size(address(masterChefAddress))
        call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
             gas gas_remaining wei
            args poolID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lPtokenAddress)
        staticcall lPtokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
        if not ext_code.size(lPtokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
        mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
        call lPtokenAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 28], mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
            if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
            if stor0:
                revert with 0, 'Pausable: paused'
            stor0 = 1
            emit Paused(msg.sender);
        mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
        mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 626] = 32
            mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 658] = 32
            mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 690] = 'SafeERC20: low-level call failed'
        else:
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _4212) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                    mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 626] = 32
                    mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 658] = 42
                    mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _4212) + (4 * ceil32(return_data.size)) + 622
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if not stor0:
                stor0 = 1
                emit Paused(msg.sender);
            mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 626] = 32
            mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 658] = 16
            mem[(32 * _4212) + (4 * ceil32(return_data.size)) + 690] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
        revert with memory
          from (32 * _4212) + (4 * ceil32(return_data.size)) + 622
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[260] = return_data.size
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if block.timestamp + 120 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 297] = 0
        mem[ceil32(return_data.size) + 361] = this.address
        mem[ceil32(return_data.size) + 393] = block.timestamp + 120
        mem[ceil32(return_data.size) + 329] = 160
        mem[ceil32(return_data.size) + 425] = sub_e7063750.length
        if not sub_e7063750.length:
            require ext_code.size(0x64000000000000000000000000e54ca86531e17ef3616d22ca28b0d458b6c891)
            call ????????????????????????????????????????.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _1559 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
            _1574 = mem[ceil32(return_data.size) + _1559 + 261]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _1559 + 261])] = mem[ceil32(return_data.size) + _1559 + 293 len floor32(mem[ceil32(return_data.size) + _1559 + 261])]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c9f801c7Address)
            call sub_c9f801c7Address.0xe2af7177 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[12 len 20]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4] with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                emit 0xec0dee9b: ext_call.return_data[0]
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolID
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call lPtokenAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                else:
                    mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 732 len 22]
            else:
                mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    emit 0xec0dee9b: ext_call.return_data[0]
                    require ext_code.size(address(masterChefAddress))
                    call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolID
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lPtokenAddress)
                    staticcall lPtokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 728 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 714 len 4] = 0
                    call lPtokenAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 686 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 732 len 22]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        stor0 = 1
                        emit Paused(msg.sender);
                    mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 654]:
                            mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
                            mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 42
                            mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if not stor0:
                        stor0 = 1
                        mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = msg.sender
                        emit Paused(mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                    mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
                    mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 16
                    mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
                    revert with memory
                      from (32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                require return_data.size >= 32
                if not mem[(32 * _1574) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 568 len 22]
                emit 0xec0dee9b: ext_call.return_data[0]
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolID
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 728 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 686 len 0] = 0
                call lPtokenAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 686 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                        mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 658] = 42
                        mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                        revert with memory
                          from (32 * _1574) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if not stor0:
                        stor0 = 1
                        emit Paused(msg.sender);
                    mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 626] = 32
                    mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 658] = 16
                    mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 690] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
                    revert with memory
                      from (32 * _1574) + (4 * ceil32(return_data.size)) + 622
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1574) + (4 * ceil32(return_data.size)) + 654]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1574) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 733 len 22]
            if stor0:
                revert with 0, 'Pausable: paused'
            stor0 = 1
            emit Paused(msg.sender);
        mem[0] = 10
        mem[ceil32(return_data.size) + 457] = address(sub_e7063750.field_0)
        idx = ceil32(return_data.size) + 457
        s = 0
        while ceil32(return_data.size) + (32 * sub_e7063750.length) + 457 > idx + 32:
            mem[idx + 32] = sub_e7063750[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x64000000000000000000000000e54ca86531e17ef3616d22ca28b0d458b6c891)
        call ????????????????????????????????????????.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length, mem[ceil32(return_data.size) + 457 len 32 * sub_e7063750.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _4179 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
        _4221 = mem[ceil32(return_data.size) + _4179 + 261]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _4179 + 261])] = mem[ceil32(return_data.size) + _4179 + 293 len floor32(mem[ceil32(return_data.size) + _4179 + 261])]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c9f801c7Address)
        call sub_c9f801c7Address.0xe2af7177 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[12 len 20]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
            if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            emit 0xec0dee9b: ext_call.return_data[0]
            require ext_code.size(address(masterChefAddress))
            call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
            call lPtokenAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
            else:
                mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 732 len 22]
            if stor0:
                revert with 0, 'Pausable: paused'
            stor0 = 1
            emit Paused(msg.sender);
        mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _4221) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 568 len 22]
        emit 0xec0dee9b: ext_call.return_data[0]
        require ext_code.size(address(masterChefAddress))
        call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
             gas gas_remaining wei
            args poolID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lPtokenAddress)
        staticcall lPtokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 728 len 26]
        if not ext_code.size(lPtokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 714 len 4] = 0
        call lPtokenAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 686 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
            if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 732 len 22]
            if stor0:
                revert with 0, 'Pausable: paused'
            stor0 = 1
            emit Paused(msg.sender);
        mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _4221) + (4 * ceil32(return_data.size)) + 654]:
                mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
                mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 42
                mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        if not stor0:
            stor0 = 1
            mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = msg.sender
            emit Paused(mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
        mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
        mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 16
        mem[(32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
        revert with memory
          from (32 * _4221) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    require return_data.size >= 32
    if not mem[292]:
        revert with 0, 
                    32,
                    42,
                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 371 len 22]
    if block.timestamp + 120 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 297] = 0
    mem[ceil32(return_data.size) + 361] = this.address
    mem[ceil32(return_data.size) + 393] = block.timestamp + 120
    mem[ceil32(return_data.size) + 329] = 160
    mem[ceil32(return_data.size) + 425] = sub_e7063750.length
    if not sub_e7063750.length:
        require ext_code.size(0x64000000000000000000000000e54ca86531e17ef3616d22ca28b0d458b6c891)
        call ????????????????????????????????????????.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _1571 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
        _1582 = mem[ceil32(return_data.size) + _1571 + 261]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _1571 + 261])] = mem[ceil32(return_data.size) + _1571 + 293 len floor32(mem[ceil32(return_data.size) + _1571 + 261])]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c9f801c7Address)
        call sub_c9f801c7Address.0xe2af7177 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[12 len 20]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
            if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            emit 0xec0dee9b: ext_call.return_data[0]
            require ext_code.size(address(masterChefAddress))
            call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
            call lPtokenAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
            else:
                mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 732 len 22]
        else:
            mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                emit 0xec0dee9b: ext_call.return_data[0]
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolID
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 728 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 714 len 4] = 0
                call lPtokenAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 686 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 732 len 22]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 654]:
                        mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
                        mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 42
                        mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                        revert with memory
                          from (32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if not stor0:
                    stor0 = 1
                    mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = msg.sender
                    emit Paused(mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
                mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 16
                mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
                revert with memory
                  from (32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require return_data.size >= 32
            if not mem[(32 * _1582) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 568 len 22]
            emit 0xec0dee9b: ext_call.return_data[0]
            require ext_code.size(address(masterChefAddress))
            call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 728 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
            mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 686 len 0] = 0
            call lPtokenAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 686 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                    mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 626] = 32
                    mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 658] = 42
                    mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _1582) + (4 * ceil32(return_data.size)) + 622
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if not stor0:
                    stor0 = 1
                    emit Paused(msg.sender);
                mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 626] = 32
                mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 658] = 16
                mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 690] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
                revert with memory
                  from (32 * _1582) + (4 * ceil32(return_data.size)) + 622
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _1582) + (4 * ceil32(return_data.size)) + 654]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1582) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 733 len 22]
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
    mem[0] = 10
    mem[ceil32(return_data.size) + 457] = address(sub_e7063750.field_0)
    idx = ceil32(return_data.size) + 457
    s = 0
    while ceil32(return_data.size) + (32 * sub_e7063750.length) + 457 > idx + 32:
        mem[idx + 32] = sub_e7063750[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(0x64000000000000000000000000e54ca86531e17ef3616d22ca28b0d458b6c891)
    call ????????????????????????????????????????.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length, mem[ceil32(return_data.size) + 457 len 32 * sub_e7063750.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
    require return_data.size >= 32
    _4181 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
    _4230 = mem[ceil32(return_data.size) + _4181 + 261]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _4181 + 261])] = mem[ceil32(return_data.size) + _4181 + 293 len floor32(mem[ceil32(return_data.size) + _4181 + 261])]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c9f801c7Address)
    call sub_c9f801c7Address.0xe2af7177 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[12 len 20]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        emit 0xec0dee9b: ext_call.return_data[0]
        require ext_code.size(address(masterChefAddress))
        call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
             gas gas_remaining wei
            args poolID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lPtokenAddress)
        staticcall lPtokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
        if not ext_code.size(lPtokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        call lPtokenAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
            if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
        else:
            mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 732 len 22]
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
    mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        emit 0xec0dee9b: ext_call.return_data[0]
        require ext_code.size(address(masterChefAddress))
        call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
             gas gas_remaining wei
            args poolID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lPtokenAddress)
        staticcall lPtokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 728 len 26]
        if not ext_code.size(lPtokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 686 len 0] = 0
        call lPtokenAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 686 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
            if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
                mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 626] = 32
                mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 658] = 42
                mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _4230) + (4 * ceil32(return_data.size)) + 622
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if not stor0:
                stor0 = 1
                emit Paused(msg.sender);
            mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 626] = 32
            mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 658] = 16
            mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 690] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
            revert with memory
              from (32 * _4230) + (4 * ceil32(return_data.size)) + 622
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 654]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 733 len 22]
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
    require return_data.size >= 32
    if not mem[(32 * _4230) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
        revert with 0, 
                    32,
                    42,
                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 568 len 22]
    emit 0xec0dee9b: ext_call.return_data[0]
    require ext_code.size(address(masterChefAddress))
    call address(masterChefAddress).emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args poolID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 728 len 26]
    if not ext_code.size(lPtokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
    mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 714 len 4] = 0
    call lPtokenAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 686 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 277206018889309764303547682, 0, 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), 277206018889309764303547682:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 732 len 22]
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
    mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(32 * _4230) + (4 * ceil32(return_data.size)) + 654]:
            mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
            mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 42
            mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if not stor0:
        stor0 = 1
        mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = msg.sender
        emit Paused(mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
    mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
    mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 16
    mem[(32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
    revert with memory
      from (32 * _4230) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
