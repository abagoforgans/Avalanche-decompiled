contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2ff19d61(?) payable {
    require calldata.size - 4 >= 384
    require cd[4] == address(cd[4])
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] == address(cd[228])
    require cd[260] == address(cd[260])
    require cd[292] == address(cd[292])
    require cd[324] == address(cd[324])
    require cd[356] <= test266151307()
    require cd[356] + 35 < calldata.size
    if ('cd', 356).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 356).length) + 128 < 96 or (32 * ('cd', 356).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 356).length
    require calldata.size >= cd[356] + (32 * ('cd', 356).length) + 36
    idx = 0
    s = cd[356] + 36
    t = 128
    while idx < ('cd', 356).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 356).length) + 132] = address(cd[4])
    require ext_code.size(address(cd[164]))
    staticcall address(cd[164]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(32 * ('cd', 356).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[68]:
        mem[(32 * ('cd', 356).length) + ceil32(return_data.size) + 132] = address(cd[4])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
        mem[(32 * ('cd', 356).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= cd[100]:
            if not address(cd[260]):
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128] = 1
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 160] = address(cd[196])
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 192] = 1
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 224] = cd[36]
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 256] = 1
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 288] = 0
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 352] = address(cd[292])
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 384] = address(cd[4])
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 416] = address(cd[228])
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 448] = address(cd[324])
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 480] = 160
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 512] = ('cd', 356).length
                idx = 0
                s = 128
                t = (32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 544
                while idx < ('cd', 356).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 320] = (96 * ('cd', 356).length) + 192
                mem[64] = (64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 544
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 544] = 0xab9c4b5d00000000000000000000000000000000000000000000000000000000
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 548] = this.address
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 580] = 224
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 772] = 1
                idx = 0
                s = (32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 160
                t = (64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 804
                while idx < mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 612] = (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 256
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 804] = 1
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 836] = cd[36]
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 644] = (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 320
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 868] = 1
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 900] = 0
                var102001 = 1
                var102002 = (32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 320
                var102007 = (64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 932
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 676] = this.address
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 708] = (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 384
                _161 = mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 320]
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 932] = mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 320]
                mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 964 len ceil32(_161)] = mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 352 len ceil32(_161)]
                if ceil32(_161) > _161:
                    mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + _161 + 964] = 0
                require ext_code.size(address(cd[292]))
                call address(cd[292]).flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
                     gas gas_remaining wei
                    args address(this.address), 224, (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 256, (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 320, address(this.address), (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 384, 0, mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 772 len (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 32], 1, cd[36], 1, 0, mem[(64 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128]) + 932 len ceil32(_161) + 32]
            else:
                require ext_code.size(address(cd[260]))
                staticcall address(cd[260]).token0() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 356).length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(cd[260]))
                if ext_call.return_data[12 len 20] != address(cd[196]):
                    staticcall address(cd[260]).token0() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 356).length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 160] = address(cd[4])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 192] = address(cd[324])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 224] = address(cd[260])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 256] = 224
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 384] = ('cd', 356).length
                    idx = 0
                    s = 128
                    t = mem[64] + 288
                    while idx < ('cd', 356).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 320] = address(cd[228])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 352] = address(cd[292])
                    _118 = mem[64]
                    mem[mem[64]] = (64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + -mem[64] + 384
                    mem[64] = (64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 416
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 420] = 0
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 452] = cd[36]
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 484] = this.address
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 516] = 128
                    _121 = mem[_118]
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 548] = mem[_118]
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 580 len ceil32(_121)] = mem[_118 + 32 len ceil32(_121)]
                    if ceil32(_121) > _121:
                        mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + _121 + 580] = 0
                    require ext_code.size(address(cd[260]))
                    call address(cd[260]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, cd[36], address(this.address), 128, mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 548 len ceil32(_121) + 32]
                else:
                    staticcall address(cd[260]).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 356).length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 160] = address(cd[4])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 192] = address(cd[324])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 224] = address(cd[260])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 256] = 224
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 384] = ('cd', 356).length
                    idx = 0
                    s = 128
                    t = mem[64] + 288
                    while idx < ('cd', 356).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 320] = address(cd[228])
                    mem[(32 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 352] = address(cd[292])
                    _119 = mem[64]
                    mem[mem[64]] = (64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + -mem[64] + 384
                    mem[64] = (64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 416
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 420] = cd[36]
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 452] = 0
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 484] = this.address
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 516] = 128
                    _122 = mem[_119]
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 548] = mem[_119]
                    mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 580 len ceil32(_122)] = mem[_119 + 32 len ceil32(_122)]
                    if ceil32(_122) > _122:
                        mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + _122 + 580] = 0
                    require ext_code.size(address(cd[260]))
                    call address(cd[260]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[36], 0, address(this.address), 128, mem[(64 * ('cd', 356).length) + (6 * ceil32(return_data.size)) + 548 len ceil32(_122) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg5.length >= 160
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    require cd[(arg5 + 164)] <= test266151307()
    require arg5 + cd[(arg5 + 164)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 164)] + 36)] > test266151307():
        revert with 0, 65
    if (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 288 < 256 or (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 288 > test266151307():
        revert with 0, 65
    mem[256] = cd[(arg5 + cd[(arg5 + 164)] + 36)]
    require arg5.length + 36 >= cd[(arg5 + 164)] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 68
    idx = 0
    s = arg5 + cd[(arg5 + 164)] + 68
    t = 288
    while idx < cd[(arg5 + cd[(arg5 + 164)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[96] = address(cd[(arg5 + 36)])
    mem[128] = address(cd[(arg5 + 68)])
    mem[160] = address(cd[(arg5 + 100)])
    mem[192] = address(cd[(arg5 + 132)])
    mem[224] = 256
    if not arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if 0 >= arg2.length:
        revert with 0, 50
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 292] = address(cd[(arg5 + 36)])
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 324] = cd[(arg2 + 36)]
    require ext_code.size(address(cd[(arg1 + 36)]))
    call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 36)]), cd[(arg2 + 36)]
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approval1-A error'
    if 0 >= arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if 0 >= arg2.length:
        revert with 0, 50
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + ceil32(return_data.size) + 288] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + ceil32(return_data.size) + 292] = address(cd[(arg5 + 100)])
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + ceil32(return_data.size) + 324] = address(cd[(arg1 + 36)])
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + ceil32(return_data.size) + 356] = address(cd[(arg5 + 68)])
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + ceil32(return_data.size) + 388] = cd[(arg2 + 36)]
    mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + ceil32(return_data.size) + 420] = 0
    require ext_code.size(address(cd[(arg5 + 36)]))
    call address(cd[(arg5 + 36)]).liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 100)]), address(cd[(arg1 + 36)]), address(cd[(arg5 + 68)]), cd[(arg2 + 36)], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(cd[(arg5 + 132)]):
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        require ext_code.size(address(cd[(arg1 + 36)]))
        staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 >= arg2.length:
            revert with 0, 50
        if 0 >= arg3.length:
            revert with 0, 50
        if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
            revert with 0, 17
        if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        if cd[(arg2 + 36)] + cd[(arg3 + 36)] > ext_call.return_data[0]:
            revert with 0, 'NaNaNaNa BATMAN', 0
        if ext_call.return_data[0] < cd[(arg2 + 36)] + cd[(arg3 + 36)]:
            revert with 0, 17
        if ext_call.return_data[0] - cd[(arg2 + 36)] - cd[(arg3 + 36)] <= 0:
            revert with 0, 'PRO < 0'
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] - cd[(arg2 + 36)] - cd[(arg3 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 0 >= arg3.length:
            revert with 0, 50
        if 0 >= arg2.length:
            revert with 0, 50
        if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
            revert with 0, 17
        if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 36)]), cd[(arg2 + 36)] + cd[(arg3 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if 0 >= arg3.length:
            revert with 0, 50
        if 0 >= arg2.length:
            revert with 0, 50
        if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
            revert with 0, 17
        if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 >= cd[(arg5 + cd[(arg5 + 164)] + 36)]:
            revert with 0, 50
        _108 = mem[288]
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + ceil32(return_data.size) + 292] = this.address
        require ext_code.size(address(_108))
        staticcall address(_108).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No amount to trade xDxDxD'
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 292] = address(cd[(arg5 + 132)])
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        require ext_code.size(address(_108))
        call address(_108).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 132)]), ext_call.return_data[0]
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Approval 2 error'
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 324] = cd[(arg2 + 36)] + cd[(arg3 + 36)]
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 356] = 160
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 452] = cd[(arg5 + cd[(arg5 + 164)] + 36)]
        idx = 0
        s = 288
        t = (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 484
        while idx < cd[(arg5 + cd[(arg5 + 164)] + 36)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 388] = this.address
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 420] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 292 len (96 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (6 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _188 = mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + return_data.size + 288 > (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
        _189 = mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
        if mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] > test266151307():
            revert with 0, 65
        if (32 * mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 < 0 or (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 > test266151307():
            revert with 0, 65
        mem[64] = (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (6 * ceil32(return_data.size)) + 288] = _189
        require return_data.size >= _188 + (32 * _189) + 32
        mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (6 * ceil32(return_data.size)) + 320 len 32 * _189] = mem[(32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + (4 * ceil32(return_data.size)) + _188 + 320 len 32 * _189]
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg1 + 36)]))
        staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _222 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _223 = mem[_222]
        if 0 >= arg2.length:
            revert with 0, 50
        if 0 >= arg3.length:
            revert with 0, 50
        if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
            revert with 0, 17
        if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        _225 = mem[64]
        mem[64] = mem[64] + 64
        mem[_225] = 15
        mem[_225 + 32] = 'NaNaNaNa BATMAN'
        if cd[(arg2 + 36)] + cd[(arg3 + 36)] > _223:
            revert with 0, 'NaNaNaNa BATMAN', 0
        if _223 < cd[(arg2 + 36)] + cd[(arg3 + 36)]:
            revert with 0, 17
        if _223 - cd[(arg2 + 36)] - cd[(arg3 + 36)] <= 0:
            revert with 0, 'PRO < 0'
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _223 - cd[(arg2 + 36)] - cd[(arg3 + 36)]
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, _223 - cd[(arg2 + 36)] - cd[(arg3 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _236 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_236] == bool(mem[_236])
        if 0 >= arg3.length:
            revert with 0, 50
        if 0 >= arg2.length:
            revert with 0, 50
        if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
            revert with 0, 17
        if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        mem[mem[64] + 4] = uint64(cd[(arg5 + 36)]) << 96
        mem[mem[64] + 36] = cd[(arg2 + 36)] + cd[(arg3 + 36)]
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args cd[(arg5 + 36)] << 192, cd[(arg2 + 36)] + cd[(arg3 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
    return 1
}



}
