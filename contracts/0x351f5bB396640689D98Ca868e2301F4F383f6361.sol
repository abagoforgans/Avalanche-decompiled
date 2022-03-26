contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address stor2;
address stor3;

function _fallback() payable {
  stop
}

function getAll() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getAllTokens(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e72b8798(?) {
    require calldata.size - 4 >= 224
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    require msg.sender == stor0
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 64
    mem[164] = arg4.length
    mem[196 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 196] = 0
    require ext_code.size(0xc45fb63001b56a21e29c7dcc1727bfda273a368)
    staticcall 0xc45fb63001b56a21e29c7dcc1727bfda273a368.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] <= arg2 + arg3:
        revert with 0, 'F1'
    require 1 < mem[ceil32(return_data.size) + 96]
    _53 = mem[ceil32(return_data.size) + 160]
    stor1 = arg7
    stor3 = arg1
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = _53
    mem[(32 * _7) + ceil32(return_data.size) + 164] = 64
    mem[(32 * _7) + ceil32(return_data.size) + 196] = arg6.length
    mem[(32 * _7) + ceil32(return_data.size) + 228 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * _7) + ceil32(return_data.size) + (32 * arg6.length) + 228] = 0
    require ext_code.size(0xc45fb63001b56a21e29c7dcc1727bfda273a368)
    staticcall 0xc45fb63001b56a21e29c7dcc1727bfda273a368.getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _53, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _7) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _57 = mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _53) >> 32
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _53) >> 32 <= 4294967296
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _53) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _53) >> 32 + (32 * _7) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _53) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _53) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _53) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]
    _60 = mem[_57 + (32 * _7) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_57 + (32 * _7) + ceil32(return_data.size) + 128])] = mem[_57 + (32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[_57 + (32 * _7) + ceil32(return_data.size) + 128])]
    require 0 < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
    mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160]
    mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + 224] = 64
    mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + 256] = arg5.length
    mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + 288 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + (32 * arg5.length) + 288] = 0
    require ext_code.size(stor3)
    staticcall stor3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if not floor32(arg5.length) + 96 % 32:
            require ext_code.size(stor3)
            call stor3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args _53, 0, address(this.address), 128, floor32(arg5.length) + 96, mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len ceil32(floor32(arg5.length)) + 3], mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + floor32(arg5.length) + ceil32(floor32(arg5.length)) + 455 len floor32(arg5.length) + -ceil32(floor32(arg5.length)) + 93]
        else:
            mem[floor32(floor32(arg5.length) + 96) + (32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + floor32(arg5.length) + 452] = mem[floor32(floor32(arg5.length) + 96) + (32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + floor32(arg5.length) + -(floor32(arg5.length) + 96 % 32) + 484 len floor32(arg5.length) + 96 % 32]
            require ext_code.size(stor3)
            call stor3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args _53, 0, address(this.address), 128, floor32(arg5.length) + 96, mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len ceil32(floor32(arg5.length)) + 3], mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + floor32(arg5.length) + ceil32(floor32(arg5.length)) + 455 len floor32(floor32(arg5.length) + 96) + -ceil32(floor32(arg5.length)) + 29]
    else:
        if not floor32(arg5.length) + 96 % 32:
            require ext_code.size(stor3)
            call stor3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, _53, address(this.address), 128, floor32(arg5.length) + 96, mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len ceil32(floor32(arg5.length)) + 3], mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + floor32(arg5.length) + ceil32(floor32(arg5.length)) + 455 len floor32(arg5.length) + -ceil32(floor32(arg5.length)) + 93]
        else:
            mem[floor32(floor32(arg5.length) + 96) + (32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + floor32(arg5.length) + 452] = mem[floor32(floor32(arg5.length) + 96) + (32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + floor32(arg5.length) + -(floor32(arg5.length) + 96 % 32) + 484 len floor32(arg5.length) + 96 % 32]
            require ext_code.size(stor3)
            call stor3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, _53, address(this.address), 128, floor32(arg5.length) + 96, mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len ceil32(floor32(arg5.length)) + 3], mem[(32 * _60) + (32 * _7) + (2 * ceil32(return_data.size)) + floor32(arg5.length) + ceil32(floor32(arg5.length)) + 455 len floor32(floor32(arg5.length) + 96) + -ceil32(floor32(arg5.length)) + 29]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6c6976654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[197 len 31]
    if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
        if not address(ext_call.return_data[0]):
            revert with 0, 'OliveLibrary: ZERO_ADDRESS'
    else:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'OliveLibrary: ZERO_ADDRESS'
    mem[128] = address(ext_call.return_data[0])
    mem[148] = address(ext_call.return_data[0])
    mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[201] = 0x4fe4d8b01a56706bc6cad26e8c59d0c7169976b3000000000000000000000000
    mem[221] = sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0]))
    mem[253] = 0xb7145948956af92afd2ae97eff039ada60998237282c1687ca23ce1ad5e1d282
    if address(sha3(0, 5756964474554052715, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xb7145948956af92afd2ae97eff039ada60998237282c1687ca23ce1ad5e1d282)) != msg.sender:
        revert with 0, 'Unauthorized'
    if arg2:
        require not arg3
    require arg4.length >= 64
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[317 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0xc45fb63001b56a21e29c7dcc1727bfda273a368, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 321] = arg3
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 353] = cd[(arg4 + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 417] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 449] = stor1
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 385] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 481] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 513 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(0xc45fb63001b56a21e29c7dcc1727bfda273a368)
        call 0x0c45fb63001b56a21e29c7dcc1727bfda273a368.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, cd[(arg4 + 36)], Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 513 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 317
        require return_data.size >= 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 317] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
    else:
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0xc45fb63001b56a21e29c7dcc1727bfda273a368, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 321] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 353] = cd[(arg4 + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 417] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 449] = stor1
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 385] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 481] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 513 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(0xc45fb63001b56a21e29c7dcc1727bfda273a368)
        call 0x0c45fb63001b56a21e29c7dcc1727bfda273a368.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, cd[(arg4 + 36)], Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 513 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 317
        require return_data.size >= 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 317] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 317]
    require ext_code.size(stor2)
    call stor2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
