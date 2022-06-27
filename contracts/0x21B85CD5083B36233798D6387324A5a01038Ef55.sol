contract main {




// =====================  Runtime code  =====================


#
#  - sub_0daa2d7e(?)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_53f917d4(?)
#
address owner;
uint8 stor1;
address stor1; offset 8
address stor1;
mapping of uint8 stor2;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_63324af4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not the operator'
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(this.address)
    staticcall this.address.0xdaa2d7e with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    if not bool((2 * ceil32(return_data.size)) + 544 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    require ext_call.return_data[160] == ext_call.return_data[172 len 20]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[364 len 20]
    require ext_call.return_data[384] == ext_call.return_data[396 len 20]
    require ext_call.return_data[416] == bool(ext_call.return_data[416])
    if ext_call.return_data[320] <= ext_call.return_data[288]:
        revert with 0, 'arb1: No profit.'
    address(stor1.field_0) = ext_call.return_data[44 len 20]
    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[44 len 20]
    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[140 len 20]
    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[172 len 20]
    mem[(2 * ceil32(return_data.size)) + 928] = ext_call.return_data[364 len 20]
    mem[(2 * ceil32(return_data.size)) + 960] = ext_call.return_data[396 len 20]
    if ext_call.return_data[416]:
        mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[256]
        mem[(2 * ceil32(return_data.size)) + 1092] = this.address
        mem[(2 * ceil32(return_data.size)) + 1124] = 128
        mem[(2 * ceil32(return_data.size)) + 1156] = 448
        mem[(2 * ceil32(return_data.size)) + 1188 len 448] = mem[(2 * ceil32(return_data.size)) + 576 len 64], ext_call.return_data[64], ext_call.return_data[96], mem[(2 * ceil32(return_data.size)) + 704 len 64], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], ext_call.return_data[320], mem[(2 * ceil32(return_data.size)) + 928 len 64], bool(ext_call.return_data[416])
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[256], address(this.address), 128, 448, mem[(2 * ceil32(return_data.size)) + 576 len 64], ext_call.return_data[64], ext_call.return_data[96], mem[(2 * ceil32(return_data.size)) + 704 len 64], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], ext_call.return_data[320], mem[(2 * ceil32(return_data.size)) + 928 len 64], bool(ext_call.return_data[416])
    else:
        mem[(2 * ceil32(return_data.size)) + 1060] = 0
        mem[(2 * ceil32(return_data.size)) + 1092] = this.address
        mem[(2 * ceil32(return_data.size)) + 1124] = 128
        mem[(2 * ceil32(return_data.size)) + 1156] = 448
        mem[(2 * ceil32(return_data.size)) + 1188 len 448] = mem[(2 * ceil32(return_data.size)) + 576 len 64], ext_call.return_data[64], ext_call.return_data[96], mem[(2 * ceil32(return_data.size)) + 704 len 64], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], ext_call.return_data[320], mem[(2 * ceil32(return_data.size)) + 928 len 64], bool(ext_call.return_data[416])
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[256], 0, address(this.address), 128, 448, mem[(2 * ceil32(return_data.size)) + 576 len 64], ext_call.return_data[64], ext_call.return_data[96], mem[(2 * ceil32(return_data.size)) + 704 len 64], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], ext_call.return_data[320], mem[(2 * ceil32(return_data.size)) + 928 len 64], bool(ext_call.return_data[416])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1028] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 1024] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 1028] = 32
    mem[(4 * ceil32(return_data.size)) + 1060] = 18
    mem[(4 * ceil32(return_data.size)) + 1092] = 'arb1: Losing money'
    revert with memory
      from (4 * ceil32(return_data.size)) + 1024
       len (5 * ceil32(return_data.size)) + 100
}



}
