contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const sub_67021333(?) = 10000

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address routerAddress;
uint32 stor3;
address stakingRewardsAddress;
uint256 stor3;
address rewardTokenAddress;
uint32 stor5;
address vaultAddress;
uint256 stor5;
address lPtokenAddress;
address sub_f0fe082aAddress;
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
    return bool(uint8(stor0.field_160))
}

function sub_69d463d5(?) {
    return sub_69d463d5Address
}

function StakingRewards() {
    return address(stakingRewardsAddress)
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

function sub_f0fe082a(?) {
    return sub_f0fe082aAddress
}

function RewardToken() {
    return rewardTokenAddress
}

function Router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setProtocolAddresses(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c9f801c7Address = arg1
    emit ProtocolAddressesUpdated(sub_c9f801c7Address);
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

function sub_f03f36ef(?) {
    require ext_code.size(address(stakingRewardsAddress))
    staticcall address(stakingRewardsAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2f390dc3(?) {
    require ext_code.size(address(stakingRewardsAddress))
    staticcall address(stakingRewardsAddress).earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_cc85d60b(?) {
    require ext_code.size(address(stakingRewardsAddress))
    staticcall address(stakingRewardsAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if uint8(stor0.field_160):
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
                    55,
                    0x6c5374616b696e6752657761726473537472617465677956323a204465706f7369742063616c6c6564207769746820302062616c616e63,
                    mem[219 len 9]
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stakingRewardsAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(lPtokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), Mask(224, 31, ext_call.return_data[0]) >> 31
    call lPtokenAddress with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(stakingRewardsAddress))
    call address(stakingRewardsAddress).stake(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(ext_call.return_data[0]);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x735374616b696e6752657761726473537472617465677956323a2043616c6c6572206973206e6f7420746865205661756c,
                    mem[213 len 15]
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
        require ext_code.size(address(stakingRewardsAddress))
        call address(stakingRewardsAddress).0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
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
        revert with 0, 32, 38, 0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(lPtokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[0] <= arg1:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
        call lPtokenAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg1) >> 32
        call lPtokenAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    emit Withdraw(arg1);
}

function sub_0e907e52(?) {
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x735374616b696e6752657761726473537472617465677956323a2043616c6c6572206973206e6f7420746865205661756c,
                    mem[213 len 15]
    require ext_code.size(address(stakingRewardsAddress))
    call address(stakingRewardsAddress).0x3d18b912 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        require ext_code.size(address(stakingRewardsAddress))
        staticcall address(stakingRewardsAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(address(stakingRewardsAddress))
            call address(stakingRewardsAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
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
            revert with 0, 32, 38, 0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(lPtokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
        call lPtokenAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        require ext_code.size(sub_69d463d5Address)
        call sub_69d463d5Address.0x9297c530 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_69d463d5Address)
        call sub_69d463d5Address.0xecc6f5b6 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if block.timestamp + 120 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[132] = 0
            mem[196] = this.address
            mem[228] = block.timestamp + 120
            mem[164] = 160
            mem[260] = sub_e7063750.length
            if not sub_e7063750.length:
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _78 = mem[96 len 4], 0
                require mem[96 len 4], 0 <= 4294967296
                require mem[96 len 4], 0 + 32 <= return_data.size
                require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                _96 = mem[_78 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_78 + 96])] = mem[_78 + 128 len floor32(mem[_78 + 96])]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c9f801c7Address)
                    call sub_c9f801c7Address.HarvestProcessor() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _96) + ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
                    mem[(32 * _96) + ceil32(return_data.size) + 196] = 0 / 2 * ext_call.return_data[0]
                    mem[(32 * _96) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _96) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _96) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _96) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _96) + ceil32(return_data.size) + 398 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _96) + ceil32(return_data.size) + 292 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, 0 / 2 * ext_call.return_data[0]) >> 32
                    mem[(32 * _96) + ceil32(return_data.size) + 384 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _96) + ceil32(return_data.size) + 192 len 4] with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], 0, mem[(32 * _96) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], 0 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], 0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], 0 > 0:
                            require mem[96 len 4], 0 >= 32
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _96) + ceil32(return_data.size) + 402 len 22]
                        emit 0xec0dee9b: (0 / 2 * ext_call.return_data[0])
                        mem[(32 * _96) + ceil32(return_data.size) + 328] = msg.sender
                        mem[(32 * _96) + ceil32(return_data.size) + 360] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                        mem[(32 * _96) + ceil32(return_data.size) + 292] = 68
                        mem[(32 * _96) + ceil32(return_data.size) + 328 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _96) + ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _96) + ceil32(return_data.size) + 392] = 32
                        mem[(32 * _96) + ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _96) + ceil32(return_data.size) + 562 len 26]
                        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _96) + ceil32(return_data.size) + 456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) >> 32
                        mem[(32 * _96) + ceil32(return_data.size) + 548 len 4] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) << 224, mem[(32 * _96) + ceil32(return_data.size) + 520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _96) + ceil32(return_data.size) + 566 len 22]
                            emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                            require ext_code.size(address(stakingRewardsAddress))
                            staticcall address(stakingRewardsAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stakingRewardsAddress))
                                call address(stakingRewardsAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lPtokenAddress)
                            staticcall lPtokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _96) + ceil32(return_data.size) + 492] = address(vaultAddress)
                            mem[(32 * _96) + ceil32(return_data.size) + 524] = ext_call.return_data[0]
                            mem[(32 * _96) + ceil32(return_data.size) + 456] = 68
                            mem[(32 * _96) + ceil32(return_data.size) + 492 len 28] = Mask(224, 0, stor5)
                            mem[(32 * _96) + ceil32(return_data.size) + 488 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _96) + ceil32(return_data.size) + 556] = 32
                            mem[(32 * _96) + ceil32(return_data.size) + 588] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _96) + ceil32(return_data.size) + 726 len 26]
                            if ext_code.size(lPtokenAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _96) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                            mem[(32 * _96) + ceil32(return_data.size) + 712 len 4] = 0
                            call lPtokenAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _96) + ceil32(return_data.size) + 684 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], 0 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], 0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96 len 4], 0 > 0:
                                    require mem[96 len 4], 0 >= 32
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _96) + ceil32(return_data.size) + 730 len 22]
                            else:
                                mem[(32 * _96) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _96) + ceil32(return_data.size) + 652]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _96) + ceil32(return_data.size) + 456] = return_data.size
                        mem[(32 * _96) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _96) + ceil32(return_data.size) + 488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _96) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _96) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _96) + ceil32(return_data.size) + 292] = return_data.size
                    mem[(32 * _96) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _96) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    emit 0xec0dee9b: (0 / 2 * ext_call.return_data[0])
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) >> 32
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) << 224, mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], 0 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], 0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], 0 > 0:
                            require mem[96 len 4], 0 >= 32
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _96) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _96) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 462] = 32
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 494] = 42
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _96) + (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _96) + (4 * ceil32(return_data.size)) + 458] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _96) + ceil32(return_data.size) + 229 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c9f801c7Address)
                    call sub_c9f801c7Address.HarvestProcessor() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _96) + ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
                    mem[(32 * _96) + ceil32(return_data.size) + 196] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                    mem[(32 * _96) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _96) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _96) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _96) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _96) + ceil32(return_data.size) + 398 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _96) + ceil32(return_data.size) + 292 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]) >> 32
                    mem[(32 * _96) + ceil32(return_data.size) + 384 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _96) + ceil32(return_data.size) + 192 len 4] with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0], 0, mem[(32 * _96) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], 0 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], 0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], 0 > 0:
                            require mem[96 len 4], 0 >= 32
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _96) + ceil32(return_data.size) + 402 len 22]
                        emit 0xec0dee9b: (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                        mem[(32 * _96) + ceil32(return_data.size) + 328] = msg.sender
                        mem[(32 * _96) + ceil32(return_data.size) + 360] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                        mem[(32 * _96) + ceil32(return_data.size) + 292] = 68
                        mem[(32 * _96) + ceil32(return_data.size) + 328 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _96) + ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _96) + ceil32(return_data.size) + 392] = 32
                        mem[(32 * _96) + ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _96) + ceil32(return_data.size) + 562 len 26]
                        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _96) + ceil32(return_data.size) + 456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                        mem[(32 * _96) + ceil32(return_data.size) + 548 len 4] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) << 224, mem[(32 * _96) + ceil32(return_data.size) + 520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _96) + ceil32(return_data.size) + 566 len 22]
                            emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                            require ext_code.size(address(stakingRewardsAddress))
                            staticcall address(stakingRewardsAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stakingRewardsAddress))
                                call address(stakingRewardsAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lPtokenAddress)
                            staticcall lPtokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _96) + ceil32(return_data.size) + 492] = address(vaultAddress)
                            mem[(32 * _96) + ceil32(return_data.size) + 524] = ext_call.return_data[0]
                            mem[(32 * _96) + ceil32(return_data.size) + 456] = 68
                            mem[(32 * _96) + ceil32(return_data.size) + 492 len 28] = Mask(224, 0, stor5)
                            mem[(32 * _96) + ceil32(return_data.size) + 488 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _96) + ceil32(return_data.size) + 556] = 32
                            mem[(32 * _96) + ceil32(return_data.size) + 588] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _96) + ceil32(return_data.size) + 726 len 26]
                            if ext_code.size(lPtokenAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _96) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                            mem[(32 * _96) + ceil32(return_data.size) + 712 len 4] = 0
                            call lPtokenAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _96) + ceil32(return_data.size) + 684 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], 0 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], 0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96 len 4], 0 > 0:
                                    require mem[96 len 4], 0 >= 32
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _96) + ceil32(return_data.size) + 730 len 22]
                            else:
                                mem[(32 * _96) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _96) + ceil32(return_data.size) + 652]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _96) + ceil32(return_data.size) + 456] = return_data.size
                        mem[(32 * _96) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _96) + ceil32(return_data.size) + 488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _96) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _96) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _96) + ceil32(return_data.size) + 292] = return_data.size
                    mem[(32 * _96) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _96) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    emit 0xec0dee9b: (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) << 224, mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], 0 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], 0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], 0 > 0:
                            require mem[96 len 4], 0 >= 32
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _96) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _96) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                    mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _96) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 462] = 32
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 494] = 42
                            mem[(32 * _96) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _96) + (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _96) + (4 * ceil32(return_data.size)) + 458] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                emit 0x1777ed52: mem[(32 * _96) + (4 * ceil32(return_data.size)) + 458 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 462] = this.address
                require ext_code.size(address(stakingRewardsAddress))
                staticcall address(stakingRewardsAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _96) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    mem[(32 * _96) + (4 * ceil32(return_data.size)) + 462] = ext_call.return_data[0]
                    require ext_code.size(address(stakingRewardsAddress))
                    call address(stakingRewardsAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[(32 * _96) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 462] = this.address
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _96) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 494] = address(vaultAddress)
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 526] = ext_call.return_data[0]
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 458] = (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 494 len 28] = Mask(224, 0, stor5)
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 490 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 558] = 32
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 590] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 728 len 26]
                if ext_code.size(lPtokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622 len floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), mem[(32 * _96) + (4 * ceil32(return_data.size)) + 526 len floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                mem[(32 * _96) + (4 * ceil32(return_data.size)) + floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 654 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = mem[(32 * _96) + (4 * ceil32(return_data.size)) + -((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 522 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32]
                call lPtokenAddress.mem[(32 * _96) + (4 * ceil32(return_data.size)) + 622 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _96) + (4 * ceil32(return_data.size)) + 626 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], 0 > 0:
                            revert with memory
                              from 128
                               len mem[96 len 4], 0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], 0 > 0:
                        require mem[96 len 4], 0 >= 32
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _96) + (4 * ceil32(return_data.size)) + 732 len 22]
                else:
                    mem[(32 * _96) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _96) + (4 * ceil32(return_data.size)) + 654]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _96) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
            else:
                mem[0] = 11
                mem[292] = address(sub_e7063750.field_0)
                idx = 292
                s = 0
                while (32 * sub_e7063750.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_e7063750[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length, mem[292 len 32 * sub_e7063750.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _19341 = mem[96 len 4], 0
                require mem[96 len 4], 0 <= 4294967296
                require mem[96 len 4], 0 + 32 <= return_data.size
                require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                _19386 = mem[_19341 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_19341 + 96])] = mem[_19341 + 128 len floor32(mem[_19341 + 96])]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c9f801c7Address)
                    call sub_c9f801c7Address.HarvestProcessor() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _19386) + ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
                    mem[(32 * _19386) + ceil32(return_data.size) + 196] = 0 / 2 * ext_call.return_data[0]
                    mem[(32 * _19386) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _19386) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _19386) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _19386) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _19386) + ceil32(return_data.size) + 398 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _19386) + ceil32(return_data.size) + 292 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, 0 / 2 * ext_call.return_data[0]) >> 32
                    mem[(32 * _19386) + ceil32(return_data.size) + 384 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _19386) + ceil32(return_data.size) + 192 len 4] with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], 0, mem[(32 * _19386) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], 0 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], 0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], 0 > 0:
                            require mem[96 len 4], 0 >= 32
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19386) + ceil32(return_data.size) + 402 len 22]
                        emit 0xec0dee9b: (0 / 2 * ext_call.return_data[0])
                        mem[(32 * _19386) + ceil32(return_data.size) + 328] = msg.sender
                        mem[(32 * _19386) + ceil32(return_data.size) + 360] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                        mem[(32 * _19386) + ceil32(return_data.size) + 292] = 68
                        mem[(32 * _19386) + ceil32(return_data.size) + 328 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _19386) + ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19386) + ceil32(return_data.size) + 392] = 32
                        mem[(32 * _19386) + ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19386) + ceil32(return_data.size) + 562 len 26]
                        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19386) + ceil32(return_data.size) + 456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) >> 32
                        mem[(32 * _19386) + ceil32(return_data.size) + 548 len 4] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) << 224, mem[(32 * _19386) + ceil32(return_data.size) + 520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19386) + ceil32(return_data.size) + 566 len 22]
                            emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                            require ext_code.size(address(stakingRewardsAddress))
                            staticcall address(stakingRewardsAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stakingRewardsAddress))
                                call address(stakingRewardsAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lPtokenAddress)
                            staticcall lPtokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _19386) + ceil32(return_data.size) + 492] = address(vaultAddress)
                            mem[(32 * _19386) + ceil32(return_data.size) + 524] = ext_call.return_data[0]
                            mem[(32 * _19386) + ceil32(return_data.size) + 456] = 68
                            mem[(32 * _19386) + ceil32(return_data.size) + 492 len 28] = Mask(224, 0, stor5)
                            mem[(32 * _19386) + ceil32(return_data.size) + 488 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _19386) + ceil32(return_data.size) + 556] = 32
                            mem[(32 * _19386) + ceil32(return_data.size) + 588] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _19386) + ceil32(return_data.size) + 726 len 26]
                            if ext_code.size(lPtokenAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _19386) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                            mem[(32 * _19386) + ceil32(return_data.size) + 712 len 4] = 0
                            call lPtokenAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19386) + ceil32(return_data.size) + 684 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], 0 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], 0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96 len 4], 0 > 0:
                                    require mem[96 len 4], 0 >= 32
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _19386) + ceil32(return_data.size) + 730 len 22]
                            else:
                                mem[(32 * _19386) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _19386) + ceil32(return_data.size) + 652]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19386) + ceil32(return_data.size) + 456] = return_data.size
                        mem[(32 * _19386) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19386) + ceil32(return_data.size) + 488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _19386) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _19386) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _19386) + ceil32(return_data.size) + 292] = return_data.size
                    mem[(32 * _19386) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19386) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    emit 0xec0dee9b: (0 / 2 * ext_call.return_data[0])
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) >> 32
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) << 224, mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], 0 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], 0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], 0 > 0:
                            require mem[96 len 4], 0 >= 32
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _19386) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _19386) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 462] = 32
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 494] = 42
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _19386) + (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 458] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _19386) + ceil32(return_data.size) + 229 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c9f801c7Address)
                    call sub_c9f801c7Address.HarvestProcessor() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _19386) + ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
                    mem[(32 * _19386) + ceil32(return_data.size) + 196] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                    mem[(32 * _19386) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _19386) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _19386) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _19386) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _19386) + ceil32(return_data.size) + 398 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _19386) + ceil32(return_data.size) + 292 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]) >> 32
                    mem[(32 * _19386) + ceil32(return_data.size) + 384 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _19386) + ceil32(return_data.size) + 192 len 4] with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0], 0, mem[(32 * _19386) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], 0 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], 0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], 0 > 0:
                            require mem[96 len 4], 0 >= 32
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19386) + ceil32(return_data.size) + 402 len 22]
                        emit 0xec0dee9b: (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                        mem[(32 * _19386) + ceil32(return_data.size) + 328] = msg.sender
                        mem[(32 * _19386) + ceil32(return_data.size) + 360] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                        mem[(32 * _19386) + ceil32(return_data.size) + 292] = 68
                        mem[(32 * _19386) + ceil32(return_data.size) + 328 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _19386) + ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19386) + ceil32(return_data.size) + 392] = 32
                        mem[(32 * _19386) + ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19386) + ceil32(return_data.size) + 562 len 26]
                        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19386) + ceil32(return_data.size) + 456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                        mem[(32 * _19386) + ceil32(return_data.size) + 548 len 4] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) << 224, mem[(32 * _19386) + ceil32(return_data.size) + 520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19386) + ceil32(return_data.size) + 566 len 22]
                            emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                            require ext_code.size(address(stakingRewardsAddress))
                            staticcall address(stakingRewardsAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stakingRewardsAddress))
                                call address(stakingRewardsAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lPtokenAddress)
                            staticcall lPtokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _19386) + ceil32(return_data.size) + 492] = address(vaultAddress)
                            mem[(32 * _19386) + ceil32(return_data.size) + 524] = ext_call.return_data[0]
                            mem[(32 * _19386) + ceil32(return_data.size) + 456] = 68
                            mem[(32 * _19386) + ceil32(return_data.size) + 492 len 28] = Mask(224, 0, stor5)
                            mem[(32 * _19386) + ceil32(return_data.size) + 488 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _19386) + ceil32(return_data.size) + 556] = 32
                            mem[(32 * _19386) + ceil32(return_data.size) + 588] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _19386) + ceil32(return_data.size) + 726 len 26]
                            if ext_code.size(lPtokenAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _19386) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                            mem[(32 * _19386) + ceil32(return_data.size) + 712 len 4] = 0
                            call lPtokenAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19386) + ceil32(return_data.size) + 684 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], 0 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], 0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96 len 4], 0 > 0:
                                    require mem[96 len 4], 0 >= 32
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _19386) + ceil32(return_data.size) + 730 len 22]
                            else:
                                mem[(32 * _19386) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _19386) + ceil32(return_data.size) + 652]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19386) + ceil32(return_data.size) + 456] = return_data.size
                        mem[(32 * _19386) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19386) + ceil32(return_data.size) + 488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _19386) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _19386) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _19386) + ceil32(return_data.size) + 292] = return_data.size
                    mem[(32 * _19386) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19386) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    emit 0xec0dee9b: (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) << 224, mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], 0 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], 0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], 0 > 0:
                            require mem[96 len 4], 0 >= 32
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _19386) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _19386) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                    mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19386) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 462] = 32
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 494] = 42
                            mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _19386) + (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 458] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                emit 0x1777ed52: mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 458 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 462] = this.address
                require ext_code.size(address(stakingRewardsAddress))
                staticcall address(stakingRewardsAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 462] = ext_call.return_data[0]
                    require ext_code.size(address(stakingRewardsAddress))
                    call address(stakingRewardsAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 462] = this.address
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 494] = address(vaultAddress)
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 526] = ext_call.return_data[0]
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 458] = (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 494 len 28] = Mask(224, 0, stor5)
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 490 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 558] = 32
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 590] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 728 len 26]
                if ext_code.size(lPtokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622 len floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 526 len floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                mem[(32 * _19386) + (4 * ceil32(return_data.size)) + floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 654 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = mem[(32 * _19386) + (4 * ceil32(return_data.size)) + -((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 522 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32]
                call lPtokenAddress.mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 622 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 626 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], 0 > 0:
                            revert with memory
                              from 128
                               len mem[96 len 4], 0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], 0 > 0:
                        require mem[96 len 4], 0 >= 32
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 732 len 22]
                else:
                    mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19386) + (4 * ceil32(return_data.size)) + 654]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19386) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
        else:
            require ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + 120 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000
            mem[132] = 0
            mem[196] = this.address
            mem[228] = block.timestamp + 120
            mem[164] = 160
            mem[260] = sub_e7063750.length
            if not sub_e7063750.length:
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _89 = mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + 96]
                _116 = mem[_89 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_89 + 96])] = mem[_89 + 128 len floor32(mem[_89 + 96])]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c9f801c7Address)
                    call sub_c9f801c7Address.HarvestProcessor() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _116) + ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
                    mem[(32 * _116) + ceil32(return_data.size) + 196] = 0 / 2 * ext_call.return_data[0]
                    mem[(32 * _116) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _116) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _116) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _116) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _116) + ceil32(return_data.size) + 398 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _116) + ceil32(return_data.size) + 292 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, 0 / 2 * ext_call.return_data[0]) >> 32
                    mem[(32 * _116) + ceil32(return_data.size) + 384 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _116) + ceil32(return_data.size) + 192 len 4] with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], 0, mem[(32 * _116) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                            if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _116) + ceil32(return_data.size) + 402 len 22]
                        emit 0xec0dee9b: (0 / 2 * ext_call.return_data[0])
                        mem[(32 * _116) + ceil32(return_data.size) + 328] = msg.sender
                        mem[(32 * _116) + ceil32(return_data.size) + 360] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                        mem[(32 * _116) + ceil32(return_data.size) + 292] = 68
                        mem[(32 * _116) + ceil32(return_data.size) + 328 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _116) + ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _116) + ceil32(return_data.size) + 392] = 32
                        mem[(32 * _116) + ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _116) + ceil32(return_data.size) + 562 len 26]
                        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _116) + ceil32(return_data.size) + 456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) >> 32
                        mem[(32 * _116) + ceil32(return_data.size) + 548 len 4] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) << 224, mem[(32 * _116) + ceil32(return_data.size) + 520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _116) + ceil32(return_data.size) + 566 len 22]
                            emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                            require ext_code.size(address(stakingRewardsAddress))
                            staticcall address(stakingRewardsAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stakingRewardsAddress))
                                call address(stakingRewardsAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lPtokenAddress)
                            staticcall lPtokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _116) + ceil32(return_data.size) + 492] = address(vaultAddress)
                            mem[(32 * _116) + ceil32(return_data.size) + 524] = ext_call.return_data[0]
                            mem[(32 * _116) + ceil32(return_data.size) + 456] = 68
                            mem[(32 * _116) + ceil32(return_data.size) + 492 len 28] = Mask(224, 0, stor5)
                            mem[(32 * _116) + ceil32(return_data.size) + 488 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _116) + ceil32(return_data.size) + 556] = 32
                            mem[(32 * _116) + ceil32(return_data.size) + 588] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _116) + ceil32(return_data.size) + 726 len 26]
                            if ext_code.size(lPtokenAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _116) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                            mem[(32 * _116) + ceil32(return_data.size) + 712 len 4] = 0
                            call lPtokenAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _116) + ceil32(return_data.size) + 684 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                    if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _116) + ceil32(return_data.size) + 730 len 22]
                            else:
                                mem[(32 * _116) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _116) + ceil32(return_data.size) + 652]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _116) + ceil32(return_data.size) + 456] = return_data.size
                        mem[(32 * _116) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _116) + ceil32(return_data.size) + 488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _116) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _116) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _116) + ceil32(return_data.size) + 292] = return_data.size
                    mem[(32 * _116) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _116) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    emit 0xec0dee9b: (0 / 2 * ext_call.return_data[0])
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) >> 32
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) << 224, mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                            if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _116) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _116) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 462] = 32
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 494] = 42
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _116) + (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _116) + (4 * ceil32(return_data.size)) + 458] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _116) + ceil32(return_data.size) + 229 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c9f801c7Address)
                    call sub_c9f801c7Address.HarvestProcessor() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _116) + ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
                    mem[(32 * _116) + ceil32(return_data.size) + 196] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                    mem[(32 * _116) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _116) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _116) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _116) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _116) + ceil32(return_data.size) + 398 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _116) + ceil32(return_data.size) + 292 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]) >> 32
                    mem[(32 * _116) + ceil32(return_data.size) + 384 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _116) + ceil32(return_data.size) + 192 len 4] with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0], 0, mem[(32 * _116) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                            if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _116) + ceil32(return_data.size) + 402 len 22]
                        emit 0xec0dee9b: (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                        mem[(32 * _116) + ceil32(return_data.size) + 328] = msg.sender
                        mem[(32 * _116) + ceil32(return_data.size) + 360] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                        mem[(32 * _116) + ceil32(return_data.size) + 292] = 68
                        mem[(32 * _116) + ceil32(return_data.size) + 328 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _116) + ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _116) + ceil32(return_data.size) + 392] = 32
                        mem[(32 * _116) + ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _116) + ceil32(return_data.size) + 562 len 26]
                        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _116) + ceil32(return_data.size) + 456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                        mem[(32 * _116) + ceil32(return_data.size) + 548 len 4] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) << 224, mem[(32 * _116) + ceil32(return_data.size) + 520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _116) + ceil32(return_data.size) + 566 len 22]
                            emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                            require ext_code.size(address(stakingRewardsAddress))
                            staticcall address(stakingRewardsAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stakingRewardsAddress))
                                call address(stakingRewardsAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lPtokenAddress)
                            staticcall lPtokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _116) + ceil32(return_data.size) + 492] = address(vaultAddress)
                            mem[(32 * _116) + ceil32(return_data.size) + 524] = ext_call.return_data[0]
                            mem[(32 * _116) + ceil32(return_data.size) + 456] = 68
                            mem[(32 * _116) + ceil32(return_data.size) + 492 len 28] = Mask(224, 0, stor5)
                            mem[(32 * _116) + ceil32(return_data.size) + 488 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _116) + ceil32(return_data.size) + 556] = 32
                            mem[(32 * _116) + ceil32(return_data.size) + 588] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _116) + ceil32(return_data.size) + 726 len 26]
                            if ext_code.size(lPtokenAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _116) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                            mem[(32 * _116) + ceil32(return_data.size) + 712 len 4] = 0
                            call lPtokenAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _116) + ceil32(return_data.size) + 684 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                    if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _116) + ceil32(return_data.size) + 730 len 22]
                            else:
                                mem[(32 * _116) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _116) + ceil32(return_data.size) + 652]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _116) + ceil32(return_data.size) + 456] = return_data.size
                        mem[(32 * _116) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _116) + ceil32(return_data.size) + 488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _116) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _116) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _116) + ceil32(return_data.size) + 292] = return_data.size
                    mem[(32 * _116) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _116) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    emit 0xec0dee9b: (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) << 224, mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                            if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _116) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _116) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                    mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _116) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 462] = 32
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 494] = 42
                            mem[(32 * _116) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _116) + (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _116) + (4 * ceil32(return_data.size)) + 458] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                emit 0x1777ed52: mem[(32 * _116) + (4 * ceil32(return_data.size)) + 458 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 462] = this.address
                require ext_code.size(address(stakingRewardsAddress))
                staticcall address(stakingRewardsAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _116) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    mem[(32 * _116) + (4 * ceil32(return_data.size)) + 462] = ext_call.return_data[0]
                    require ext_code.size(address(stakingRewardsAddress))
                    call address(stakingRewardsAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[(32 * _116) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 462] = this.address
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _116) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 494] = address(vaultAddress)
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 526] = ext_call.return_data[0]
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 458] = (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 494 len 28] = Mask(224, 0, stor5)
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 490 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 558] = 32
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 590] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 728 len 26]
                if ext_code.size(lPtokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622 len floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), mem[(32 * _116) + (4 * ceil32(return_data.size)) + 526 len floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                mem[(32 * _116) + (4 * ceil32(return_data.size)) + floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 654 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = mem[(32 * _116) + (4 * ceil32(return_data.size)) + -((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 522 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32]
                call lPtokenAddress.mem[(32 * _116) + (4 * ceil32(return_data.size)) + 622 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _116) + (4 * ceil32(return_data.size)) + 626 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                        require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                        if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + 732 len 22]
                else:
                    mem[(32 * _116) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _116) + (4 * ceil32(return_data.size)) + 654]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _116) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
            else:
                mem[0] = 11
                mem[292] = address(sub_e7063750.field_0)
                idx = 292
                s = 0
                while (32 * sub_e7063750.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_e7063750[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0, 160, address(this.address), block.timestamp + 120, sub_e7063750.length, mem[292 len 32 * sub_e7063750.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _19339 = mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 + 96]
                _19369 = mem[_19339 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_19339 + 96])] = mem[_19339 + 128 len floor32(mem[_19339 + 96])]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c9f801c7Address)
                    call sub_c9f801c7Address.HarvestProcessor() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _19369) + ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
                    mem[(32 * _19369) + ceil32(return_data.size) + 196] = 0 / 2 * ext_call.return_data[0]
                    mem[(32 * _19369) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _19369) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _19369) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _19369) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _19369) + ceil32(return_data.size) + 398 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _19369) + ceil32(return_data.size) + 292 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, 0 / 2 * ext_call.return_data[0]) >> 32
                    mem[(32 * _19369) + ceil32(return_data.size) + 384 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _19369) + ceil32(return_data.size) + 192 len 4] with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], 0, mem[(32 * _19369) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                            if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19369) + ceil32(return_data.size) + 402 len 22]
                        emit 0xec0dee9b: (0 / 2 * ext_call.return_data[0])
                        mem[(32 * _19369) + ceil32(return_data.size) + 328] = msg.sender
                        mem[(32 * _19369) + ceil32(return_data.size) + 360] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                        mem[(32 * _19369) + ceil32(return_data.size) + 292] = 68
                        mem[(32 * _19369) + ceil32(return_data.size) + 328 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _19369) + ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19369) + ceil32(return_data.size) + 392] = 32
                        mem[(32 * _19369) + ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19369) + ceil32(return_data.size) + 562 len 26]
                        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19369) + ceil32(return_data.size) + 456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) >> 32
                        mem[(32 * _19369) + ceil32(return_data.size) + 548 len 4] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) << 224, mem[(32 * _19369) + ceil32(return_data.size) + 520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _19369) + ceil32(return_data.size) + 566 len 22]
                            emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                            require ext_code.size(address(stakingRewardsAddress))
                            staticcall address(stakingRewardsAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stakingRewardsAddress))
                                call address(stakingRewardsAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lPtokenAddress)
                            staticcall lPtokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _19369) + ceil32(return_data.size) + 492] = address(vaultAddress)
                            mem[(32 * _19369) + ceil32(return_data.size) + 524] = ext_call.return_data[0]
                            mem[(32 * _19369) + ceil32(return_data.size) + 456] = 68
                            mem[(32 * _19369) + ceil32(return_data.size) + 492 len 28] = Mask(224, 0, stor5)
                            mem[(32 * _19369) + ceil32(return_data.size) + 488 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _19369) + ceil32(return_data.size) + 556] = 32
                            mem[(32 * _19369) + ceil32(return_data.size) + 588] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _19369) + ceil32(return_data.size) + 726 len 26]
                            if ext_code.size(lPtokenAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _19369) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                            mem[(32 * _19369) + ceil32(return_data.size) + 712 len 4] = 0
                            call lPtokenAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19369) + ceil32(return_data.size) + 684 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                    if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _19369) + ceil32(return_data.size) + 730 len 22]
                            else:
                                mem[(32 * _19369) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _19369) + ceil32(return_data.size) + 652]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19369) + ceil32(return_data.size) + 456] = return_data.size
                        mem[(32 * _19369) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19369) + ceil32(return_data.size) + 488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _19369) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _19369) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _19369) + ceil32(return_data.size) + 292] = return_data.size
                    mem[(32 * _19369) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19369) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    emit 0xec0dee9b: (0 / 2 * ext_call.return_data[0])
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) >> 32
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])) << 224, mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                            if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _19369) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _19369) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 462] = 32
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 494] = 42
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _19369) + (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 458] = ext_call.return_data[0] - (0 / 2 * ext_call.return_data[0])
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _19369) + ceil32(return_data.size) + 229 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c9f801c7Address)
                    call sub_c9f801c7Address.HarvestProcessor() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _19369) + ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
                    mem[(32 * _19369) + ceil32(return_data.size) + 196] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                    mem[(32 * _19369) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _19369) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _19369) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _19369) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _19369) + ceil32(return_data.size) + 398 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _19369) + ceil32(return_data.size) + 292 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]) >> 32
                    mem[(32 * _19369) + ceil32(return_data.size) + 384 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[(32 * _19369) + ceil32(return_data.size) + 192 len 4] with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0], 0, mem[(32 * _19369) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                            if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19369) + ceil32(return_data.size) + 402 len 22]
                        emit 0xec0dee9b: (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                        mem[(32 * _19369) + ceil32(return_data.size) + 328] = msg.sender
                        mem[(32 * _19369) + ceil32(return_data.size) + 360] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                        mem[(32 * _19369) + ceil32(return_data.size) + 292] = 68
                        mem[(32 * _19369) + ceil32(return_data.size) + 328 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _19369) + ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19369) + ceil32(return_data.size) + 392] = 32
                        mem[(32 * _19369) + ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19369) + ceil32(return_data.size) + 562 len 26]
                        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19369) + ceil32(return_data.size) + 456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                        mem[(32 * _19369) + ceil32(return_data.size) + 548 len 4] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) << 224, mem[(32 * _19369) + ceil32(return_data.size) + 520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _19369) + ceil32(return_data.size) + 566 len 22]
                            emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                            require ext_code.size(address(stakingRewardsAddress))
                            staticcall address(stakingRewardsAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stakingRewardsAddress))
                                call address(stakingRewardsAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lPtokenAddress)
                            staticcall lPtokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _19369) + ceil32(return_data.size) + 492] = address(vaultAddress)
                            mem[(32 * _19369) + ceil32(return_data.size) + 524] = ext_call.return_data[0]
                            mem[(32 * _19369) + ceil32(return_data.size) + 456] = 68
                            mem[(32 * _19369) + ceil32(return_data.size) + 492 len 28] = Mask(224, 0, stor5)
                            mem[(32 * _19369) + ceil32(return_data.size) + 488 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _19369) + ceil32(return_data.size) + 556] = 32
                            mem[(32 * _19369) + ceil32(return_data.size) + 588] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _19369) + ceil32(return_data.size) + 726 len 26]
                            if ext_code.size(lPtokenAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _19369) + ceil32(return_data.size) + 620 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                            mem[(32 * _19369) + ceil32(return_data.size) + 712 len 4] = 0
                            call lPtokenAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19369) + ceil32(return_data.size) + 684 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                    if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _19369) + ceil32(return_data.size) + 730 len 22]
                            else:
                                mem[(32 * _19369) + ceil32(return_data.size) + 652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _19369) + ceil32(return_data.size) + 652]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19369) + ceil32(return_data.size) + 456] = return_data.size
                        mem[(32 * _19369) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19369) + ceil32(return_data.size) + 488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _19369) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _19369) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _19369) + ceil32(return_data.size) + 292] = return_data.size
                    mem[(32 * _19369) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19369) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    emit 0xec0dee9b: (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])) << 224, mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                            if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                        emit 0x1777ed52: (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
                        require ext_code.size(address(stakingRewardsAddress))
                        staticcall address(stakingRewardsAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(stakingRewardsAddress))
                            call address(stakingRewardsAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lPtokenAddress)
                        staticcall lPtokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = address(vaultAddress)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = ext_call.return_data[0]
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = 68
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 28] = Mask(224, 0, stor5)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = 32
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 589] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 727 len 26]
                        if ext_code.size(lPtokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 4] = 0
                        call lPtokenAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                                if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 731 len 22]
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            Mask(96, 0, stor0.field_160) = 1
                            emit Paused(msg.sender);
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 621] = return_data.size
                        mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 653]:
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626] = 32
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 658] = 42
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 690 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (32 * _19369) + (4 * ceil32(return_data.size)) + 622
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not uint8(stor0.field_160):
                            Mask(96, 0, stor0.field_160) = 1
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = msg.sender
                            emit Paused(mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626] = 32
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 658] = 16
                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 690] = 'Pausable: paused'
                        revert with memory
                          from (32 * _19369) + (4 * ceil32(return_data.size)) + 622
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                    mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19369) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 462] = 32
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 494] = 42
                            mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _19369) + (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 458] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                emit 0x1777ed52: mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 458 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 462] = this.address
                require ext_code.size(address(stakingRewardsAddress))
                staticcall address(stakingRewardsAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 462] = ext_call.return_data[0]
                    require ext_code.size(address(stakingRewardsAddress))
                    call address(stakingRewardsAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 462] = this.address
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 494] = address(vaultAddress)
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 526] = ext_call.return_data[0]
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 458] = (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 494 len 28] = Mask(224, 0, stor5)
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 490 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 558] = 32
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 590] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x41416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 728 len 26]
                if ext_code.size(lPtokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622 len floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 526 len floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                mem[(32 * _19369) + (4 * ceil32(return_data.size)) + floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 654 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = mem[(32 * _19369) + (4 * ceil32(return_data.size)) + -((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + floor32((4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 522 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32]
                call lPtokenAddress.mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 622 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 626 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 > 0:
                        require mem[96 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) >> 32 >= 32
                        if not uint32((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000), 0:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 732 len 22]
                else:
                    mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _19369) + (4 * ceil32(return_data.size)) + 654]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _19369) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}



}
