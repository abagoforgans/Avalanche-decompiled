contract main {




// =====================  Runtime code  =====================


#
#  - sub_0e907e52(?)
#  - harvest()
#
const sub_67021333(?) = 10000

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


uint8 stor0; offset 160
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
array of address sub_e7063750;
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
    return sub_e7063750[arg1]
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
    mem[324 len 0] = 0
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
    if ext_call.return_data[0] >= arg1:
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
            mem[324 len 0] = 0
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
    else:
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
        if ext_call.return_data[0] > arg1:
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
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
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
    emit Withdraw(arg1);
}



}
