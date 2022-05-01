contract main {




// =====================  Runtime code  =====================


const RAY = 1000000000 * 10^18


address dssPsmAddress;
address uniRouter02Address;
address daiJoinAddress;
address daiAddress;
mapping of address bridges;

function uniRouter02() payable {
    return uniRouter02Address
}

function daiJoin() payable {
    return daiJoinAddress
}

function dssPsm() payable {
    return dssPsmAddress
}

function bridges(address arg1) payable {
    require calldata.size - 4 >= 32
    return bridges[arg1]
}

function dai() payable {
    return daiAddress
}

function _fallback() payable {
    revert
}

function clipperCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 132)] <= 4294967296
    require cd[(arg4 + 132)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).dec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 18 > 18:
        revert with 0, 'ds-math-sub-underflow'
    require 10^(-ext_call.return_data[0] + 18)
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).exit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg3 / 10^(-ext_call.return_data[0] + 18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).gem() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = ext_call.return_data[12 len 20]
    mem[32] = 4
    if not bridges[ext_call.return_data[12 len 20]]:
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128] = 0x33cfcd3b00000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 132] = arg3 / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).withdraw(uint256 arg1, uint256 arg2, bool arg3) with:
             gas gas_remaining wei
            args arg3 / 10^(-ext_call.return_data[0] + 18), 1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
        _21 = mem[128]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniRouter02Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 + 999999999999999999999999999 < arg2:
            revert with 0, 'ds-math-add-overflow'
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 132] = ext_call.return_data[0]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 164] = 0
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = block.timestamp
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 196] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
        require ext_code.size(uniRouter02Address)
        call uniRouter02Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, cd[(arg4 + cd[(arg4 + 132)] + 36)], call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _355 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 128] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128]
        _361 = mem[_355 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 160 len floor32(mem[_355 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128])] = mem[_355 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 160 len floor32(mem[_355 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128])]
        mem[(32 * _361) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 164] = this.address
        require ext_code.size(address(_21))
        staticcall address(_21).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _361) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(address(_21))
            staticcall address(_21).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _361) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * _361) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 164] = address(cd[(arg4 + 36)])
            mem[(32 * _361) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20])
        staticcall mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dssPsmAddress)
        staticcall dssPsmAddress.gemJoin() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20] != ext_call.return_data[12 len 20]:
            require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20])
            call mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xb6b55f25 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(dssPsmAddress)
        staticcall dssPsmAddress.gemJoin() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(dssPsmAddress)
        call dssPsmAddress.sellGem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (arg2 + 999999999999999999999999999 / 1000000000 * 10^18) + cd[(arg4 + 100)] < arg2 + 999999999999999999999999999 / 1000000000 * 10^18:
            revert with 0, 'ds-math-add-overflow'
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (arg2 + 999999999999999999999999999 / 1000000000 * 10^18) + cd[(arg4 + 100)]:
            revert with 0, 
                        32,
                        35,
                        0xfe556e6973776170563243616c6c65652f696e73756666696369656e742d70726f6669,
                        mem[(32 * _361) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 263 len 29]
    else:
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128] = 0x441a3e7000000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 132] = arg3 / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(bridges[ext_call.return_data[12 len 20]])
        call bridges[ext_call.return_data[12 len 20]].0x441a3e70 with:
             gas gas_remaining wei
            args arg3 / 10^(-ext_call.return_data[0] + 18), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
        _24 = mem[128]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniRouter02Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 + 999999999999999999999999999 < arg2:
            revert with 0, 'ds-math-add-overflow'
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 132] = ext_call.return_data[0]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 164] = 0
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = block.timestamp
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 196] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
        require ext_code.size(uniRouter02Address)
        call uniRouter02Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, cd[(arg4 + cd[(arg4 + 132)] + 36)], call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _357 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 128] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 len 4], ext_call.return_data[0 len 28] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128]
        _362 = mem[_357 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 160 len floor32(mem[_357 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128])] = mem[_357 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 160 len floor32(mem[_357 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128])]
        mem[(32 * _362) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 164] = this.address
        require ext_code.size(address(_24))
        staticcall address(_24).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _362) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(address(_24))
            staticcall address(_24).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _362) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * _362) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 164] = address(cd[(arg4 + 36)])
            mem[(32 * _362) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
            require ext_code.size(address(_24))
            call address(_24).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20])
        staticcall mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dssPsmAddress)
        staticcall dssPsmAddress.gemJoin() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20] != ext_call.return_data[12 len 20]:
            require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20])
            call mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 140 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xb6b55f25 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(dssPsmAddress)
        staticcall dssPsmAddress.gemJoin() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(dssPsmAddress)
        call dssPsmAddress.sellGem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (arg2 + 999999999999999999999999999 / 1000000000 * 10^18) + cd[(arg4 + 100)] < arg2 + 999999999999999999999999999 / 1000000000 * 10^18:
            revert with 0, 'ds-math-add-overflow'
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (arg2 + 999999999999999999999999999 / 1000000000 * 10^18) + cd[(arg4 + 100)]:
            revert with 0, 
                        32,
                        35,
                        0xfe556e6973776170563243616c6c65652f696e73756666696369656e742d70726f6669,
                        mem[(32 * _362) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 263 len 29]
    ('ge', ('ext_call.return_data', 0, 32), ('add', ('div', ('add', 999999999999999999999999999, ('param', 'arg2')), 1000000000000000000000000000), ('cd', ('add', 100, ('param', 'arg4')))))
    require ext_code.size(daiJoinAddress)
    call daiJoinAddress.join(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2 + 999999999999999999999999999 / 1000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 36)]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
