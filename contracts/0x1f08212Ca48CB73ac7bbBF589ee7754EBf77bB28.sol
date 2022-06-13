contract main {




// =====================  Runtime code  =====================


#
#  - action()
#
address owner;
uint32 stor1;
address stor1;
uint256 sub_63c0c18e;
address operatorAddress;
address stor4;
uint32 stor5;
address pegAddress;
uint32 stor6;
address shareAddress;
address sub_755eb689Address;
address sub_cc4c9200Address;
uint256 sub_23f5f320;
uint256 sub_15d79b1b;
address chefAddress;
uint256 phase;

function sub_15d79b1b(?) {
    return sub_15d79b1b
}

function peg() {
    return address(pegAddress)
}

function chef() {
    return chefAddress
}

function sub_23f5f320(?) {
    return sub_23f5f320
}

function operator() {
    return operatorAddress
}

function sub_63c0c18e(?) {
    return sub_63c0c18e
}

function sub_755eb689(?) {
    return sub_755eb689Address
}

function owner() {
    return owner
}

function share() {
    return address(shareAddress)
}

function phase() {
    return phase
}

function sub_cc4c9200(?) {
    return sub_cc4c9200Address
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

function setPhase(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    phase = arg1
}

function sub_b9563474(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_63c0c18e = arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    operatorAddress = arg1
}

function drainEth() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_43b20570(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
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

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_8e291e8c(?) {
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    require ext_code.size(sub_cc4c9200Address)
    staticcall sub_cc4c9200Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chefAddress)
    call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_15d79b1b, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d94578a0(?) {
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    require ext_code.size(sub_755eb689Address)
    staticcall sub_755eb689Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chefAddress)
    call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_23f5f320, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b56611d1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(chefAddress)
    call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_23f5f320, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_755eb689Address:
        require ext_code.size(sub_755eb689Address)
        staticcall sub_755eb689Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_755eb689Address)
        call sub_755eb689Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function withdrawShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(chefAddress)
    call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_15d79b1b, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_cc4c9200Address:
        require ext_code.size(sub_cc4c9200Address)
        staticcall sub_cc4c9200Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_cc4c9200Address)
        call sub_cc4c9200Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_265d0b7a(?) {
    require ext_code.size(address(stor1))
    staticcall address(stor1).0x70a08231 with:
            gas gas_remaining wei
           args sub_755eb689Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_755eb689Address)
    staticcall sub_755eb689Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 2 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_842411b1(?) {
    require ext_code.size(address(stor1))
    staticcall address(stor1).0x70a08231 with:
            gas gas_remaining wei
           args sub_cc4c9200Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_cc4c9200Address)
    staticcall sub_cc4c9200Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 2 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function exit() {
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_23f5f320, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(chefAddress)
    call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_23f5f320, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_15d79b1b, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(chefAddress)
    call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_15d79b1b, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(stor1):
        require ext_code.size(address(stor1))
        staticcall address(stor1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor1))
        call address(stor1).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(pegAddress):
        require ext_code.size(address(pegAddress))
        staticcall address(pegAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(pegAddress))
        call address(pegAddress).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(shareAddress):
        require ext_code.size(address(shareAddress))
        staticcall address(shareAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(shareAddress))
        call address(shareAddress).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_755eb689Address:
        require ext_code.size(sub_755eb689Address)
        staticcall sub_755eb689Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_755eb689Address)
        call sub_755eb689Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_cc4c9200Address:
        require ext_code.size(sub_cc4c9200Address)
        staticcall sub_cc4c9200Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_cc4c9200Address)
        call sub_cc4c9200Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0a3c60be(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    require ext_code.size(chefAddress)
    call chefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if arg1 == sub_23f5f320:
            require ext_code.size(sub_755eb689Address)
            staticcall sub_755eb689Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args 0, uint32(stor5), address(stor1), ext_call.return_data[0], 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            if arg1 == sub_15d79b1b:
                require ext_code.size(sub_cc4c9200Address)
                staticcall sub_cc4c9200Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args 0, uint32(stor6), address(stor1), ext_call.return_data[0], 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(stor1):
        require ext_code.size(address(stor1))
        staticcall address(stor1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor1))
        call address(stor1).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(pegAddress):
        require ext_code.size(address(pegAddress))
        staticcall address(pegAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(pegAddress))
        call address(pegAddress).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(shareAddress):
        require ext_code.size(address(shareAddress))
        staticcall address(shareAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(shareAddress))
        call address(shareAddress).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_755eb689Address:
        require ext_code.size(sub_755eb689Address)
        staticcall sub_755eb689Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_755eb689Address)
        call sub_755eb689Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_cc4c9200Address:
        require ext_code.size(sub_cc4c9200Address)
        staticcall sub_cc4c9200Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_cc4c9200Address)
        call sub_cc4c9200Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d4ffd22b(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(chefAddress)
    call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if arg1 == sub_23f5f320:
            require ext_code.size(sub_755eb689Address)
            staticcall sub_755eb689Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[32], uint32(stor1), ext_call.return_data[0], 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            if arg1 == sub_15d79b1b:
                require ext_code.size(sub_cc4c9200Address)
                staticcall sub_cc4c9200Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[32], uint32(stor1), ext_call.return_data[0], 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(stor1):
        require ext_code.size(address(stor1))
        staticcall address(stor1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor1))
        call address(stor1).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(pegAddress):
        require ext_code.size(address(pegAddress))
        staticcall address(pegAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(pegAddress))
        call address(pegAddress).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if address(shareAddress):
        require ext_code.size(address(shareAddress))
        staticcall address(shareAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(shareAddress))
        call address(shareAddress).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_755eb689Address:
        require ext_code.size(sub_755eb689Address)
        staticcall sub_755eb689Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_755eb689Address)
        call sub_755eb689Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_cc4c9200Address:
        require ext_code.size(sub_cc4c9200Address)
        staticcall sub_cc4c9200Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_cc4c9200Address)
        call sub_cc4c9200Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_291c6a28(?) {
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    require ext_code.size(address(stor1))
    staticcall address(stor1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no funds to grow with!'
    if sub_755eb689Address:
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_23f5f320, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_23f5f320, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if sub_cc4c9200Address:
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_15d79b1b, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_15d79b1b, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(shareAddress))
    staticcall address(shareAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if sub_63c0c18e * ext_call.return_data[0] / ext_call.return_data[0] != sub_63c0c18e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_63c0c18e * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_63c0c18e * ext_call.return_data[0] / 10000:
            require ext_code.size(address(shareAddress))
            staticcall address(shareAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor1))
            staticcall address(stor1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    if operatorAddress != msg.sender:
                        revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[333 len 23]
            else:
                if ext_call.return_data[0] <= 0:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[333 len 23]
                else:
                    require ext_code.size(stor4)
                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0, uint32(stor6), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        41,
                                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                        ext_call.return_data[9 len 23]
        else:
            mem[516 len 0] = None
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_63c0c18e * ext_call.return_data[0] / 10000, 0, 160, this.address, block.timestamp, 2, mem[516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(shareAddress))
            staticcall address(shareAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor1))
            staticcall address(stor1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    if operatorAddress != msg.sender:
                        revert with 0, 'sOwnable: caller is not the owner/operatoddres'
            else:
                if ext_call.return_data[0] <= 0:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                else:
                    require ext_code.size(stor4)
                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(shareAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        41,
                                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                        ext_call.return_data[9 len 23]
        require ext_code.size(sub_cc4c9200Address)
        staticcall sub_cc4c9200Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(chefAddress)
        call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_15d79b1b, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_41ef57bf(?) {
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    if sub_755eb689Address:
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_23f5f320, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_23f5f320, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if sub_cc4c9200Address:
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_15d79b1b, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_15d79b1b, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(shareAddress))
    staticcall address(shareAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if sub_63c0c18e > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(address(shareAddress))
                staticcall address(shareAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[461 len 23]
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[461 len 23]
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(shareAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
            else:
                mem[644 len 0] = None
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(shareAddress))
                staticcall address(shareAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(shareAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
        else:
            if -sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != -sub_63c0c18e + 10000 / 2:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if -sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - (-sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000):
                require ext_code.size(address(shareAddress))
                staticcall address(shareAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[461 len 23]
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[461 len 23]
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(shareAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
            else:
                mem[644 len 0] = None
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (-sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000), 0, 160, this.address, block.timestamp, 2, mem[644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(shareAddress))
                staticcall address(shareAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(shareAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
        require ext_code.size(sub_cc4c9200Address)
        staticcall sub_cc4c9200Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(chefAddress)
        call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_15d79b1b, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_756235fa(?) {
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    require ext_code.size(address(stor1))
    staticcall address(stor1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no funds to grow with!'
    if sub_755eb689Address:
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_23f5f320, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_23f5f320, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if sub_cc4c9200Address:
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_15d79b1b, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_15d79b1b, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(shareAddress))
    staticcall address(shareAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if sub_63c0c18e * ext_call.return_data[0] / ext_call.return_data[0] != sub_63c0c18e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_63c0c18e * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_63c0c18e * ext_call.return_data[0] / 10000:
            if not ext_call.return_data[0] - (sub_63c0c18e * ext_call.return_data[0] / 10000):
                require ext_code.size(address(pegAddress))
                staticcall address(pegAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[333 len 23]
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[333 len 23]
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args 0, uint32(stor5), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
            else:
                mem[548 len 0] = None
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (sub_63c0c18e * ext_call.return_data[0] / 10000), 0, 160, this.address, block.timestamp, 3, mem[548 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(pegAddress))
                staticcall address(pegAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(pegAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
        else:
            mem[516 len 0] = None
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_63c0c18e * ext_call.return_data[0] / 10000, 0, 160, this.address, block.timestamp, 2, mem[516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.return_data[0] - (sub_63c0c18e * ext_call.return_data[0] / 10000):
                require ext_code.size(address(pegAddress))
                staticcall address(pegAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(pegAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
            else:
                mem[644 len 0] = None
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (sub_63c0c18e * ext_call.return_data[0] / 10000), 0, 0, 160, this.address, block.timestamp, 3, mem[644 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(pegAddress))
                staticcall address(pegAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 'sOwnable: caller is not the owner/operato', Mask(184, 0, this.address)
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operato', Mask(184, 0, this.address)
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(pegAddress), address(stor1), 0, ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
        require ext_code.size(sub_755eb689Address)
        staticcall sub_755eb689Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(chefAddress)
        call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_23f5f320, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_ef358f60(?) {
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                        mem[205 len 23]
    if sub_755eb689Address:
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_23f5f320, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_23f5f320, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if sub_cc4c9200Address:
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_15d79b1b, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_15d79b1b, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(shareAddress))
    staticcall address(shareAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if sub_63c0c18e > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(address(pegAddress))
                staticcall address(pegAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[461 len 23]
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[461 len 23]
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(pegAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
            else:
                mem[644 len 0] = None
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(pegAddress))
                staticcall address(pegAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1))
                staticcall address(stor1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if owner != msg.sender:
                        if operatorAddress != msg.sender:
                            revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                else:
                    if ext_call.return_data[0] <= 0:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                    else:
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(pegAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 
                                            32,
                                            41,
                                            0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                            ext_call.return_data[9 len 23]
        else:
            if -sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != -sub_63c0c18e + 10000 / 2:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if -sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - (-sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000):
                if not -sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000:
                    require ext_code.size(address(pegAddress))
                    staticcall address(pegAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor1))
                    staticcall address(stor1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[461 len 23]
                    else:
                        if ext_call.return_data[0] <= 0:
                            if owner != msg.sender:
                                if operatorAddress != msg.sender:
                                    revert with 0, 32, 41, 0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f, mem[461 len 23]
                        else:
                            require ext_code.size(stor4)
                            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(pegAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if owner != msg.sender:
                                if operatorAddress != msg.sender:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                                ext_call.return_data[9 len 23]
                else:
                    mem[676 len 0] = None
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000, 0, 160, this.address, block.timestamp, 3, mem[676 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(pegAddress))
                    staticcall address(pegAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor1))
                    staticcall address(stor1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                    else:
                        if ext_call.return_data[0] <= 0:
                            if owner != msg.sender:
                                if operatorAddress != msg.sender:
                                    revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                        else:
                            require ext_code.size(stor4)
                            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(pegAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if owner != msg.sender:
                                if operatorAddress != msg.sender:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                                ext_call.return_data[9 len 23]
            else:
                mem[644 len 0] = None
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (-sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000), 0, 160, this.address, block.timestamp, 2, mem[644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not -sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000:
                    require ext_code.size(address(pegAddress))
                    staticcall address(pegAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor1))
                    staticcall address(stor1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                    else:
                        if ext_call.return_data[0] <= 0:
                            if owner != msg.sender:
                                if operatorAddress != msg.sender:
                                    revert with 0, 'sOwnable: caller is not the owner/operatoddres'
                        else:
                            require ext_code.size(stor4)
                            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(pegAddress), address(stor1), ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if owner != msg.sender:
                                if operatorAddress != msg.sender:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                                ext_call.return_data[9 len 23]
                else:
                    mem[772 len 0] = None
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -sub_63c0c18e + 10000 / 2 * ext_call.return_data[0] / 10000, 0, 0, 160, this.address, block.timestamp, 3, mem[772 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(pegAddress))
                    staticcall address(pegAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor1))
                    staticcall address(stor1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if owner != msg.sender:
                            if operatorAddress != msg.sender:
                                revert with 0, 'sOwnable: caller is not the owner/operato', Mask(184, 0, this.address)
                    else:
                        if ext_call.return_data[0] <= 0:
                            if owner != msg.sender:
                                if operatorAddress != msg.sender:
                                    revert with 0, 'sOwnable: caller is not the owner/operato', Mask(184, 0, this.address)
                        else:
                            require ext_code.size(stor4)
                            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(pegAddress), address(stor1), 0, ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if owner != msg.sender:
                                if operatorAddress != msg.sender:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722f6f70657261746f,
                                                ext_call.return_data[9 len 23]
        require ext_code.size(sub_755eb689Address)
        staticcall sub_755eb689Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(chefAddress)
        call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_23f5f320, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
