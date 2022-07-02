contract main {




// =====================  Runtime code  =====================


#
#  - liquidate(address arg1, address arg2, address arg3, uint256 arg4)
#
address owner;
address stor1;
mapping of uint8 stor2;
address comptrollerAddress;
address FACTORYAddress;
address ROUTERAddress;
address WETHAddress;
address cETHAddress;
uint256 pairCodeHash;

function FACTORY() {
    return FACTORYAddress
}

function ROUTER() {
    return ROUTERAddress
}

function Comptroller() {
    return comptrollerAddress
}

function owner() {
    return owner
}

function pairCodeHash() {
    return pairCodeHash
}

function cETH() {
    return cETHAddress
}

function WETH() {
    return WETHAddress
}

function isExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'can't renounceOwnership here'
}

function acceptTransferOwnership() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the pendingOwner'
    owner = stor1
    emit OwnershipTransferred(owner, stor1);
}

function setExecutor(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
}

function withdrawEth() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Withdraw failed.'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit ChangePendingOwner(stor1, arg1);
    stor1 = arg1
}

function underlying(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function underlyingPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] < WETHAddress:
        return address(sha3(0, FACTORYAddress, sha3(address(ext_call.return_data[0]), WETHAddress), pairCodeHash))
    return address(sha3(0, FACTORYAddress, sha3(WETHAddress, address(ext_call.return_data[0])), pairCodeHash))
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    if arg2 != -1:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function liquidatable(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[64] <= 0:
        revert with 0, 'liquidate:shortFall == 0'
    require ext_code.size(arg2)
    staticcall arg2.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'liquidate:borrowBalanceStored == 0'
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function calculate(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(arg2)
    staticcall arg2.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] < WETHAddress:
        if arg3 == cETHAddress:
            return address(sha3(0, FACTORYAddress, sha3(address(ext_call.return_data[0]), WETHAddress), pairCodeHash)), 
                   address(sha3(0, FACTORYAddress, sha3(WETHAddress, WETHAddress), pairCodeHash)),
                   address(ext_call.return_data[0]),
                   WETHAddress,
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        require ext_code.size(arg3)
        staticcall arg3.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] < WETHAddress:
            mem[(6 * ceil32(return_data.size)) + 337] = WETHAddress
            return address(sha3(0, FACTORYAddress, sha3(address(ext_call.return_data[0]), WETHAddress), pairCodeHash)), 
                   address(sha3(0, FACTORYAddress, sha3(address(ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + 337 len (9 * ceil32(return_data.size)) + 20]), pairCodeHash)),
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(6 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
        return address(sha3(0, FACTORYAddress, sha3(address(ext_call.return_data[0]), WETHAddress), pairCodeHash)), 
               address(sha3(0, FACTORYAddress, sha3(WETHAddress, mem[(6 * ceil32(return_data.size)) + 337 len (9 * ceil32(return_data.size)) + 20]), pairCodeHash)),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    if arg3 == cETHAddress:
        return address(sha3(0, FACTORYAddress, sha3(WETHAddress, address(ext_call.return_data[0])), pairCodeHash)), 
               address(sha3(0, FACTORYAddress, sha3(WETHAddress, WETHAddress), pairCodeHash)),
               address(ext_call.return_data[0]),
               WETHAddress,
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    require ext_code.size(arg3)
    staticcall arg3.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] < WETHAddress:
        mem[(6 * ceil32(return_data.size)) + 337] = WETHAddress
        return address(sha3(0, FACTORYAddress, sha3(WETHAddress, address(ext_call.return_data[0])), pairCodeHash)), 
               address(sha3(0, FACTORYAddress, sha3(address(ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + 337 len (9 * ceil32(return_data.size)) + 20]), pairCodeHash)),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    mem[(6 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
    return address(sha3(0, FACTORYAddress, sha3(WETHAddress, address(ext_call.return_data[0])), pairCodeHash)), 
           address(sha3(0, FACTORYAddress, sha3(WETHAddress, mem[(6 * ceil32(return_data.size)) + 337 len (9 * ceil32(return_data.size)) + 20]), pairCodeHash)),
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           ext_call.return_data[0] * ext_call.return_data[0] / 10^18
}

function calcRepayAmount(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg2:
        if arg2 and ext_call.return_data[32] > -1 / arg2:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
            revert with 'NH{q', 17
        if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
            revert with 'NH{q', 17
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return ((arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0])
    if arg3 and ext_call.return_data[0] > -1 / arg3:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
        revert with 'NH{q', 17
    if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return ((arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0])
}

function liquidateCalculated(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if not stor2[address(msg.sender)]:
        revert with 0, 'not executors'
    mem[100] = this.address
    mem[132] = arg2
    require ext_code.size(arg6)
    staticcall arg6.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -arg8 - 1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] + arg8
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg6) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0] + arg8, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg6 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0] + arg8, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0] + arg8, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, address(arg2) << 64 == bool(0, address(arg2) << 64)
            if not 0, address(arg2) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(arg4)
        staticcall arg4.token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 292] = arg1
        mem[(2 * ceil32(return_data.size)) + 324] = arg2
        mem[(2 * ceil32(return_data.size)) + 356] = arg3
        mem[(2 * ceil32(return_data.size)) + 388] = arg4
        mem[(2 * ceil32(return_data.size)) + 420] = arg5
        mem[(2 * ceil32(return_data.size)) + 452] = arg7
        mem[(2 * ceil32(return_data.size)) + 484] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if arg6 == ext_call.return_data[12 len 20]:
            mem[(2 * ceil32(return_data.size)) + 488] = arg8
            mem[(2 * ceil32(return_data.size)) + 520] = 0
            mem[(2 * ceil32(return_data.size)) + 552] = this.address
            mem[(2 * ceil32(return_data.size)) + 584] = 128
            mem[(2 * ceil32(return_data.size)) + 616] = mem[(2 * ceil32(return_data.size)) + 260]
            mem[(2 * ceil32(return_data.size)) + 648 len ceil32(mem[(2 * ceil32(return_data.size)) + 260])] = mem[(2 * ceil32(return_data.size)) + 292 len ceil32(mem[(2 * ceil32(return_data.size)) + 260])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + 260]) > mem[(2 * ceil32(return_data.size)) + 260]:
                mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260] + 648] = 0
            require ext_code.size(arg4)
            call arg4.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg8, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 260], mem[(2 * ceil32(return_data.size)) + 648 len ceil32(mem[(2 * ceil32(return_data.size)) + 260])]
        else:
            mem[(2 * ceil32(return_data.size)) + 488] = 0
            mem[(2 * ceil32(return_data.size)) + 520] = arg8
            mem[(2 * ceil32(return_data.size)) + 552] = this.address
            mem[(2 * ceil32(return_data.size)) + 584] = 128
            mem[(2 * ceil32(return_data.size)) + 616] = mem[(2 * ceil32(return_data.size)) + 260]
            mem[(2 * ceil32(return_data.size)) + 648 len ceil32(mem[(2 * ceil32(return_data.size)) + 260])] = mem[(2 * ceil32(return_data.size)) + 292 len ceil32(mem[(2 * ceil32(return_data.size)) + 260])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + 260]) > mem[(2 * ceil32(return_data.size)) + 260]:
                mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260] + 648] = 0
            require ext_code.size(arg4)
            call arg4.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg8, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 260], mem[(2 * ceil32(return_data.size)) + 648 len ceil32(mem[(2 * ceil32(return_data.size)) + 260])]
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
        require ext_code.size(arg4)
        staticcall arg4.token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = arg2
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = arg3
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = arg4
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = arg5
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = arg7
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if arg6 == ext_call.return_data[12 len 20]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg8
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 128
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] + 649] = 0
            require ext_code.size(arg4)
            call arg4.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg8, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261])]
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg8
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 128
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] + 649] = 0
            require ext_code.size(arg4)
            call arg4.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg8, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    if not arg2:
        _4 = mem[128]
        require mem[128] == mem[140 len 20]
        _6 = mem[160]
        require mem[160] == mem[172 len 20]
        _8 = mem[192]
        require mem[192] == mem[204 len 20]
        _10 = mem[224]
        require mem[224] == mem[236 len 20]
        _12 = mem[256]
        require mem[256] == mem[268 len 20]
        _14 = mem[288]
        require mem[288] == mem[300 len 20]
        mem[ceil32(ceil32(arg4.length)) + 133] = arg3
        mem[ceil32(ceil32(arg4.length)) + 165] = address(_8)
        require ext_code.size(address(_6))
        call address(_6).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(_4), arg3, address(_8)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(_8))
        staticcall address(_8).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
        require ext_code.size(address(_8))
        call address(_8).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if address(_8) == cETHAddress:
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_10))
            staticcall address(_10).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if arg2:
                if arg2 and ext_call.return_data[32] > -1 / arg2:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_10))
                staticcall address(_10).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(_10))
                staticcall address(_10).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10), (arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_10))
                staticcall address(_10).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(_10))
                staticcall address(_10).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10), (arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
        else:
            require ext_code.size(address(_12))
            staticcall address(_12).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(_14))
            staticcall address(_14).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
            require ext_code.size(address(_14))
            call address(_14).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_12), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(_12))
            staticcall address(_12).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if address(_14) != ext_call.return_data[12 len 20]:
                if ext_call.return_data[32] and 1000 > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[32] > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not (1000 * ext_call.return_data[32]) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = this.address
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_12))
                call address(_12).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[0] > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 1997 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = this.address
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_12))
                call address(_12).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * ext_call.return_data[32] / 1997 * ext_call.return_data[0], address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_10))
            staticcall address(_10).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 129 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if arg2:
                if arg2 and ext_call.return_data[32] > -1 / arg2:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_10))
                staticcall address(_10).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 133] = address(_10)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10), mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_10))
                staticcall address(_10).token0() with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 133 len 8 * ceil32(return_data.size)]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133] = address(_10)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10), (arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_10))
                staticcall address(_10).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 133] = address(_10)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10), mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_10))
                staticcall address(_10).token0() with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 133 len 8 * ceil32(return_data.size)]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133] = address(_10)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10), (arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
    else:
        _5 = mem[128]
        require mem[128] == mem[140 len 20]
        _7 = mem[160]
        require mem[160] == mem[172 len 20]
        _9 = mem[192]
        require mem[192] == mem[204 len 20]
        _11 = mem[224]
        require mem[224] == mem[236 len 20]
        _13 = mem[256]
        require mem[256] == mem[268 len 20]
        _15 = mem[288]
        require mem[288] == mem[300 len 20]
        mem[ceil32(ceil32(arg4.length)) + 133] = arg2
        mem[ceil32(ceil32(arg4.length)) + 165] = address(_9)
        require ext_code.size(address(_7))
        call address(_7).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(_5), arg2, address(_9)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(_9))
        staticcall address(_9).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
        require ext_code.size(address(_9))
        call address(_9).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if address(_9) == cETHAddress:
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_11))
            staticcall address(_11).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if arg2:
                if arg2 and ext_call.return_data[32] > -1 / arg2:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_11))
                staticcall address(_11).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(_11))
                staticcall address(_11).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_11), (arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_11))
                staticcall address(_11).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(_11))
                staticcall address(_11).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_11), (arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
        else:
            require ext_code.size(address(_13))
            staticcall address(_13).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(_15))
            staticcall address(_15).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
            require ext_code.size(address(_15))
            call address(_15).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_13), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(_13))
            staticcall address(_13).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if address(_15) != ext_call.return_data[12 len 20]:
                if ext_call.return_data[32] and 1000 > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[32] > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not (1000 * ext_call.return_data[32]) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = this.address
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_13))
                call address(_13).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[0] > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 1997 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = this.address
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_13))
                call address(_13).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * ext_call.return_data[32] / 1997 * ext_call.return_data[0], address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_11))
            staticcall address(_11).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 129 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if arg2:
                if arg2 and ext_call.return_data[32] > -1 / arg2:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_11))
                staticcall address(_11).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 133] = address(_11)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11), mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_11))
                staticcall address(_11).token0() with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 133 len 8 * ceil32(return_data.size)]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133] = address(_11)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_11), (arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_11))
                staticcall address(_11).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 133] = address(_11)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11), mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_11))
                staticcall address(_11).token0() with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 133 len 8 * ceil32(return_data.size)]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133] = address(_11)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_11), (arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    if not arg2:
        _4 = mem[128]
        require mem[128] == mem[140 len 20]
        _6 = mem[160]
        require mem[160] == mem[172 len 20]
        _8 = mem[192]
        require mem[192] == mem[204 len 20]
        _10 = mem[224]
        require mem[224] == mem[236 len 20]
        _12 = mem[256]
        require mem[256] == mem[268 len 20]
        _14 = mem[288]
        require mem[288] == mem[300 len 20]
        mem[ceil32(ceil32(arg4.length)) + 133] = arg3
        mem[ceil32(ceil32(arg4.length)) + 165] = address(_8)
        require ext_code.size(address(_6))
        call address(_6).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(_4), arg3, address(_8)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(_8))
        staticcall address(_8).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
        require ext_code.size(address(_8))
        call address(_8).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if address(_8) == cETHAddress:
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_10))
            staticcall address(_10).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if arg2:
                if arg2 and ext_call.return_data[32] > -1 / arg2:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_10))
                staticcall address(_10).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(_10))
                staticcall address(_10).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10), (arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_10))
                staticcall address(_10).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(_10))
                staticcall address(_10).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10), (arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
        else:
            require ext_code.size(address(_12))
            staticcall address(_12).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(_14))
            staticcall address(_14).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
            require ext_code.size(address(_14))
            call address(_14).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_12), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(_12))
            staticcall address(_12).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if address(_14) != ext_call.return_data[12 len 20]:
                if ext_call.return_data[32] and 1000 > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[32] > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not (1000 * ext_call.return_data[32]) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = this.address
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_12))
                call address(_12).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[0] > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 1997 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = this.address
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_12))
                call address(_12).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * ext_call.return_data[32] / 1997 * ext_call.return_data[0], address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_10))
            staticcall address(_10).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 129 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if arg2:
                if arg2 and ext_call.return_data[32] > -1 / arg2:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_10))
                staticcall address(_10).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 133] = address(_10)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10), mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_10))
                staticcall address(_10).token0() with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 133 len 8 * ceil32(return_data.size)]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133] = address(_10)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10), (arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_10))
                staticcall address(_10).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 133] = address(_10)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_10), mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_10))
                staticcall address(_10).token0() with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 133 len 8 * ceil32(return_data.size)]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133] = address(_10)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10), (arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
    else:
        _5 = mem[128]
        require mem[128] == mem[140 len 20]
        _7 = mem[160]
        require mem[160] == mem[172 len 20]
        _9 = mem[192]
        require mem[192] == mem[204 len 20]
        _11 = mem[224]
        require mem[224] == mem[236 len 20]
        _13 = mem[256]
        require mem[256] == mem[268 len 20]
        _15 = mem[288]
        require mem[288] == mem[300 len 20]
        mem[ceil32(ceil32(arg4.length)) + 133] = arg2
        mem[ceil32(ceil32(arg4.length)) + 165] = address(_9)
        require ext_code.size(address(_7))
        call address(_7).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(_5), arg2, address(_9)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(_9))
        staticcall address(_9).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
        require ext_code.size(address(_9))
        call address(_9).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if address(_9) == cETHAddress:
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_11))
            staticcall address(_11).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if arg2:
                if arg2 and ext_call.return_data[32] > -1 / arg2:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_11))
                staticcall address(_11).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(_11))
                staticcall address(_11).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_11), (arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_11))
                staticcall address(_11).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(_11))
                staticcall address(_11).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_11), (arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
        else:
            require ext_code.size(address(_13))
            staticcall address(_13).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(_15))
            staticcall address(_15).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
            require ext_code.size(address(_15))
            call address(_15).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_13), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(_13))
            staticcall address(_13).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if address(_15) != ext_call.return_data[12 len 20]:
                if ext_call.return_data[32] and 1000 > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[32] > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not (1000 * ext_call.return_data[32]) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = this.address
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_13))
                call address(_13).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[0] > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 1997 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 197] = this.address
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 229] = 128
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 261] = 0
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 293 len 0] = None
                require ext_code.size(address(_13))
                call address(_13).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * ext_call.return_data[32] / 1997 * ext_call.return_data[0], address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_11))
            staticcall address(_11).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 129 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if arg2:
                if arg2 and ext_call.return_data[32] > -1 / arg2:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_11))
                staticcall address(_11).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 133] = address(_11)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11), mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_11))
                staticcall address(_11).token0() with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 133 len 8 * ceil32(return_data.size)]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133] = address(_11)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] and 301 > -1 / arg2 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 * ext_call.return_data[32] / ext_call.return_data[0] > -(301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg2 * ext_call.return_data[32] / ext_call.return_data[0]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_11), (arg2 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg2 * ext_call.return_data[32] / ext_call.return_data[0] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                require ext_code.size(address(_11))
                staticcall address(_11).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 133] = address(_11)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_11), mem[ceil32(ceil32(arg4.length)) + (13 * ceil32(return_data.size)) + 165 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_11))
                staticcall address(_11).token0() with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 133 len 8 * ceil32(return_data.size)]
                mem[ceil32(ceil32(arg4.length)) + (15 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133] = address(_11)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg4.length)) + (16 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] and 301 > -1 / arg3 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if arg3 * ext_call.return_data[0] / ext_call.return_data[32] > -(301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) - 1:
                    revert with 'NH{q', 17
                if (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000) and ext_call.return_data[0] * ext_call.return_data[32] > -1 / (arg3 * ext_call.return_data[0] / ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(WETHAddress)
                call WETHAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_11), (arg3 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + (301 * arg3 * ext_call.return_data[0] / ext_call.return_data[32] / 100000 * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
