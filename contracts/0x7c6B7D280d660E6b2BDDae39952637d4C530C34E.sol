contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - panic()
#  - beforeDeposit()
#  - pause()
#
const balanceOfPool = ext_call.return_data[0]

const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const want = 0x1337bedc9d22ecbe766df105c9623922a27963ec

const usdc = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const crv = 0x249848beca43ac405b8102ec90dd5f22ca513c06

const balanceOf = (2 * ext_call.return_data[0])

const eth = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab

const rewards = 0x5b5cfe992adac0c9d48e05854b2d91c73a003858

const balanceOfWant = ext_call.return_data[0]

const swapToken = 0x7f90122bf0700f9e7e1f688fe926940e8839f353

const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
array of address sub_59b8b9f7;
array of address sub_a9b585df;
uint8 stor11;

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function sub_59b8b9f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_59b8b9f7.length
    return sub_59b8b9f7[arg1]
}

function paused() payable {
    return bool(stor0)
}

function harvestOnDeposit() payable {
    return bool(stor11)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function sub_a9b585df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a9b585df.length
    return sub_a9b585df[arg1]
}

function keeper() payable {
    return keeperAddress
}

function beefyFee() payable {
    return beefyFee
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    stor11 = uint8(arg1)
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    if 888 < callFee:
        revert with 'NH{q', 17
    beefyFee = -callFee + 888
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
        call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.deposit(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    staticcall 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    call 0x1337bedc9d22ecbe766df105c9623922a27963ec.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] < 0:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                    else:
                        if ext_call.return_data[0] and withdrawalFee > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * withdrawalFee / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] * withdrawalFee / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] < ext_call.return_data[0] * withdrawalFee / 10000:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 < 0:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        if arg1 and withdrawalFee > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * withdrawalFee / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * withdrawalFee / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 < arg1 * withdrawalFee / 10000:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1 - (arg1 * withdrawalFee / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
        call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
        staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
            else:
                if stor0:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] < 0:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                    else:
                        if ext_call.return_data[0] and withdrawalFee > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * withdrawalFee / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] * withdrawalFee / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] < ext_call.return_data[0] * withdrawalFee / 10000:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = arg1
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 < 0:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        if arg1 and withdrawalFee > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * withdrawalFee / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * withdrawalFee / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 < arg1 * withdrawalFee / 10000:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = arg1 - (arg1 * withdrawalFee / 10000)
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
