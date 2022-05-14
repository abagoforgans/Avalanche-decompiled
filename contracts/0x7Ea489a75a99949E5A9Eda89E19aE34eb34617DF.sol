contract main {




// =====================  Runtime code  =====================


#
#  - sub_0161805b(?)
#  - sub_08ccfcd4(?)
#  - sub_6fab09c9(?)
#  - sub_d1f51c0c(?)
#  - sub_d7454504(?)
#  - sub_f882b0a3(?)
#
const sub_0d4753f2(?) = 3

const sub_0f239a00(?) = 2 * 10^6

const sub_15b77c39(?) = 0

const sub_23be56aa(?) = 0x791ac94700000000000000000000000000000000000000000000000000000000

const sub_47e3542f(?) = 2

const sub_50ff5652(?) = 0x5c11d79500000000000000000000000000000000000000000000000000000000

const sub_817766da(?) = 2

const sub_9eb41563(?) = 4

const sub_c2d9b7a8(?) = 1

const sub_cd7e6257(?) = 3

const sub_da944da1(?) = 1

const sub_ec3406fd(?) = 2

const sub_fc87c9a3(?) = 1

const DENOMINATOR = 100000


address owner;
uint256 stor1;
uint8 stor2;
mapping of uint256 sub_12554548;
mapping of uint256 sub_a7d876b2;
mapping of uint8 stor5;
address bridgeTokenAddress;
address chainTokenAddress;
address treasuryAddress;
uint32 stor9;
address custodianAddress;
uint256 stor9;
address sub_f965a542Address;
uint256 sub_1c9db774;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of struct sub_8007be2e;

function inBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function chainToken() {
    return chainTokenAddress
}

function sub_12554548(?) {
    require calldata.size - 4 >= 32
    return sub_12554548[arg1]
}

function sub_1c9db774(?) {
    return sub_1c9db774
}

function custodian() {
    return address(custodianAddress)
}

function sub_52b43a4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[address(arg1)])
}

function relayers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function paused() {
    return bool(stor2)
}

function treasury() {
    return treasuryAddress
}

function sub_8007be2e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return Mask(32, 224, sub_8007be2e[arg1].field_0), sub_8007be2e[arg1].field_32 << 224
}

function owner() {
    return owner
}

function sub_a7d876b2(?) {
    require calldata.size - 4 >= 32
    return sub_a7d876b2[arg1]
}

function bridgeToken() {
    return bridgeTokenAddress
}

function sub_f965a542(?) {
    return sub_f965a542Address
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function sub_fda9f8fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
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

function sub_a24577f7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1c9db774 = arg1
    emit 0x5f54b691: arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function setBlackList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
    emit SetBlacklist(address(arg1), arg2);
}

function sub_113f2e9d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(bool(arg2))
    emit 0xc3a92764: address(arg1), bool(arg2)
}

function sub_19f1b082(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'IHub: ZERO_ADDRESS'
    sub_f965a542Address = address(arg1)
    emit 0xaa56c0f4: address(arg1)
}

function setRelayer(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BaseBridge: ZERO_RELAYER_ADDRESS'
    stor5[address(arg1)] = uint8(arg2)
    emit 0x7e529468: address(arg1), arg2
}

function sub_efe83a30(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor13[address(arg1)]:
        revert with 0, 'BaseBridge: NOT_SUPPORTING_DEX'
    if sub_8007be2e[address(arg1)].field_32 << 224:
        return (sub_8007be2e[address(arg1)].field_32 << 224)
    return 0x791ac94700000000000000000000000000000000000000000000000000000000
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BaseBridge: ZERO_TREASURY_ADDRESS'
    treasuryAddress = arg1
    emit SetTreasury(arg1);
}

function sub_7ea3b219(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor13[address(arg1)]:
        revert with 0, 'BaseBridge: NOT_SUPPORTING_DEX'
    if Mask(32, 224, sub_8007be2e[address(arg1)].field_0):
        return Mask(32, 224, sub_8007be2e[address(arg1)].field_0)
    return 0x5c11d79500000000000000000000000000000000000000000000000000000000
}

function setCustodian(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BaseBridge: ZERO_CUSTODIAN_ADDRESS'
    address(custodianAddress) = arg1
    emit SetCustodian(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_574d080d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require calldata.size - 36 >= 64
    require arg2 == Mask(32, 224, arg2)
    require arg3 == Mask(32, 224, arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor13[address(arg1)]:
        revert with 0, 'BaseBridge: NOT_SUPPORTING_DEX'
    sub_8007be2e[address(arg1)].field_0 = 0
}

function rescueETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'BaseBridge: NOT_ENOUGH_BALANCE'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
    emit 0x902b8d44: arg1, eth.balance(this.address), eth.balance(this.address)
}

function refund(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not stor5[msg.sender]:
        revert with 0, 'BaseBridge: NOT_THE_RELAYER'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_12554548[arg1] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BaseBridge: CROSS_CHAIN_NOT_SUCCESS'
    sub_12554548[arg1] = 2
    mem[100] = this.address
    require ext_code.size(bridgeTokenAddress)
    staticcall bridgeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, mem[ceil32(return_data.size) + 196 len 28]
    call bridgeTokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    require ext_code.size(bridgeTokenAddress)
    staticcall bridgeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x477e597a: arg1, address(arg2), arg3, ext_call.return_data[0], ext_call.return_data[0]
    stor1 = 1
}

function sub_02e4e237(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_f965a542Address != msg.sender:
        revert with 0, 'BaseBridge: NOT_THE_RISK_CONTROL'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'BaseBridge: NOT_ENOUGH_BALANCE'
    if chainTokenAddress == address(arg1):
        require ext_code.size(chainTokenAddress)
        call chainTokenAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(custodianAddress) with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor9)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), arg2, mem[ceil32(return_data.size) + 196 len 28]
        call address(arg1).mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd488ff81: address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[0]
}

function withdrawal(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if address(custodianAddress) != msg.sender:
        revert with 0, 'BaseBridge: NOT_THE_CUSTODIAN'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'BaseBridge: NOT_ENOUGH_BALANCE'
    if chainTokenAddress == arg1:
        require ext_code.size(chainTokenAddress)
        call chainTokenAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(custodianAddress) with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor9)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), arg2, mem[ceil32(return_data.size) + 196 len 28]
        call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'BaseBridge: MUST_BIGGER_THEN_INIT_FUND'
    emit Withdrawal(address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[0]);
}



}
