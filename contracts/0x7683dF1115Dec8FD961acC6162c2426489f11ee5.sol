contract main {




// =====================  Runtime code  =====================


#
#  - sub_65cf6a8b(?)
#
address stor0;

function _fallback() payable {
    revert
}

function sub_78e36114(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if 0x82bd3beed98e40ab90255798289809fb109e88c7 != msg.sender:
        revert with 0, '2'
    call address(arg2) with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'STE'
}

function sendTokens(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if 0x82bd3beed98e40ab90255798289809fb109e88c7 != msg.sender:
        revert with 0, '2'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'ST'
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 'ST'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'ST'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'ST'
}

function sub_d9fc2f34(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    if 0xb4508fcddab3238e2321a17569f134706eb1f65e != msg.sender:
        revert with 0, '1'
    require 2 <= ('cd', 68).length
    mem[128 len 64] = call.data[cd[68] + 36 len 64]
    require 1 <= ('cd', 68).length
    require ('cd', 68).length <= ('cd', 68).length
    mem[192] = ('cd', 68).length - 1
    mem[224 len 32 * ('cd', 68).length - 1] = call.data[cd[68] + 68 len 32 * ('cd', 68).length - 1]
    mem[(32 * ('cd', 68).length - 1) + 224] = 2
    mem[(32 * ('cd', 68).length - 1) + 256 len 64] = call.data[calldata.size len 64]
    mem[(32 * ('cd', 68).length - 1) + 256] = cd[100]
    idx = 0
    while idx < 1:
        require idx < 2
        require idx + 1 < 2
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with memory
              from (32 * ('cd', 68).length - 1) + 320
               len 132
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with memory
                  from (32 * ('cd', 68).length - 1) + 320
                   len 100
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[(32 * ('cd', 68).length - 1) + 324 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length - 1) + 320 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            if mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] <= 0:
                revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
                if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]:
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 256] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
                if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]:
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 256] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with memory
                  from (32 * ('cd', 68).length - 1) + 320
                   len 100
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[(32 * ('cd', 68).length - 1) + 324 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length - 1) + 320 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            if mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] <= 0:
                revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
                if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]:
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 256] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 36]
                if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]:
                    revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]:
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with ext_call.return_data[0 len 96], mem[(32 * ('cd', 68).length - 1) + 416 len 4]
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 256] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 256])
        idx = idx + 1
        continue 
    if ('cd', 68).length - 1 < 2:
        revert with memory
          from (32 * ('cd', 68).length - 1) + 320
           len 100
    require ('cd', 68).length - 1 <= test266151307()
    mem[(32 * ('cd', 68).length - 1) + 320] = ('cd', 68).length - 1
    if not ('cd', 68).length - 1:
        require 0 < ('cd', 68).length - 1
        mem[(32 * ('cd', 68).length - 1) + 352] = mem[(32 * ('cd', 68).length - 1) + 288]
        idx = 0
        while idx < ('cd', 68).length - 2:
            require idx < ('cd', 68).length - 1
            require idx + 1 < ('cd', 68).length - 1
            if mem[(32 * idx) + 236 len 20] == mem[(32 * idx + 1) + 236 len 20]:
                revert with 0, 
                            32,
                            37,
                            0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 68).length - 1) + 457 len 27]
            if mem[(32 * idx) + 236 len 20] < mem[(32 * idx + 1) + 236 len 20]:
                if not mem[(32 * idx) + 236 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 236 len 20], address(mem[(32 * idx + 1) + 224])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 68).length - 1) + 352 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < ('cd', 68).length - 1
                if mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 68).length - 1) + 463 len 21]
                if mem[(32 * idx) + 236 len 20] == mem[(32 * idx) + 236 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
            else:
                if not mem[(32 * idx + 1) + 236 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 236 len 20], address(mem[(32 * idx + 1) + 224])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 68).length - 1) + 352 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < ('cd', 68).length - 1
                if mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 68).length - 1) + 463 len 21]
                if mem[(32 * idx) + 236 len 20] == mem[(32 * idx + 1) + 236 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
            idx = idx + 1
            continue 
        if mem[(32 * ('cd', 68).length - 2) + (32 * ('cd', 68).length - 1) + 352] < cd[132]:
            revert with 0, '3'
        require 0 < ('cd', 68).length
        require ('cd', 68)[0] == address(('cd', 68)[0])
        require 1 < ('cd', 68).length
        require ('cd', 68)[1] == address(('cd', 68)[1])
        mem[(64 * ('cd', 68).length - 1) + 384] = address(cd[36])
        mem[(64 * ('cd', 68).length - 1) + 416] = 96
        mem[(64 * ('cd', 68).length - 1) + 480] = ('cd', 68).length - 1
        mem[(64 * ('cd', 68).length - 1) + 512 len 32 * ('cd', 68).length - 1] = mem[(32 * ('cd', 68).length - 1) + 352 len 32 * ('cd', 68).length - 1]
        mem[(64 * ('cd', 68).length - 1) + 448] = (32 * ('cd', 68).length - 1) + 128
        mem[(98 * ('cd', 68).length) + 414] = ('cd', 68).length - 1
        idx = 0
        s = 224
        t = (98 * ('cd', 68).length) + 446
        while idx < ('cd', 68).length - 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + 450] = address(('cd', 68)[1])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + 482] = address(('cd', 68)[0])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(('cd', 68)[1]), address(('cd', 68)[0])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + 446] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require mem[(32 * ('cd', 68).length - 1) + 224] - 1 < mem[(32 * ('cd', 68).length - 1) + 224]
        _2762 = mem[(32 * mem[(32 * ('cd', 68).length - 1) + 224] - 1) + (32 * ('cd', 68).length - 1) + 256]
        if 0xb4508fcddab3238e2321a17569f134706eb1f65e != msg.sender:
            revert with 0, '1'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + ceil32(return_data.size) + 446] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (2 * ceil32(return_data.size)) + 446] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478] = _2762
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 510] = address(('cd', 68)[1])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 542] = address(ext_call.return_data[0])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 574] = address(ext_call.return_data[0])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 606] = 160
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 638] = mem[(64 * ('cd', 68).length - 1) + 352]
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 670 len ceil32(mem[(64 * ('cd', 68).length - 1) + 352])] = mem[(64 * ('cd', 68).length - 1) + 384 len ceil32(mem[(64 * ('cd', 68).length - 1) + 352])]
        stor0 = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        if address(('cd', 68)[1]) != address(ext_call.return_data[0]):
            if ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) <= mem[(64 * ('cd', 68).length - 1) + 352]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _2762, address(this.address), 128, ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) + 192, mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478 len ceil32(ceil32(mem[(64 * ('cd', 68).length - 1) + 352])) + 6]
            else:
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args 0, _2762, address(this.address), 128, ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) + 192, mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478 len ceil32(ceil32(mem[(64 * ('cd', 68).length - 1) + 352])) + 6]
        else:
            if ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) <= mem[(64 * ('cd', 68).length - 1) + 352]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _2762, 0, address(this.address), 128, ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) + 192, mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478 len ceil32(ceil32(mem[(64 * ('cd', 68).length - 1) + 352])) + 6]
            else:
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args _2762, 0, address(this.address), 128, ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) + 192, mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478 len ceil32(ceil32(mem[(64 * ('cd', 68).length - 1) + 352])) + 6]
    else:
        mem[(32 * ('cd', 68).length - 1) + 352 len 32 * ('cd', 68).length - 1] = call.data[calldata.size len 32 * ('cd', 68).length - 1]
        require 0 < ('cd', 68).length - 1
        mem[(32 * ('cd', 68).length - 1) + 352] = mem[(32 * ('cd', 68).length - 1) + 288]
        idx = 0
        while idx < ('cd', 68).length - 2:
            require idx < ('cd', 68).length - 1
            require idx + 1 < ('cd', 68).length - 1
            if mem[(32 * idx) + 236 len 20] == mem[(32 * idx + 1) + 236 len 20]:
                revert with 0, 
                            32,
                            37,
                            0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 68).length - 1) + 457 len 27]
            if mem[(32 * idx) + 236 len 20] < mem[(32 * idx + 1) + 236 len 20]:
                if not mem[(32 * idx) + 236 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 236 len 20], address(mem[(32 * idx + 1) + 224])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 68).length - 1) + 352 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < ('cd', 68).length - 1
                if mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 68).length - 1) + 463 len 21]
                if mem[(32 * idx) + 236 len 20] == mem[(32 * idx) + 236 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
            else:
                if not mem[(32 * idx + 1) + 236 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 236 len 20], address(mem[(32 * idx + 1) + 224])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 68).length - 1) + 352 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < ('cd', 68).length - 1
                if mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 68).length - 1) + 463 len 21]
                if mem[(32 * idx) + 236 len 20] == mem[(32 * idx + 1) + 236 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 68).length - 1) + 460 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] / 997 != mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
                        require idx + 1 < ('cd', 68).length - 1
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length - 1) + 352] = 997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 68).length - 1) + 352])
            idx = idx + 1
            continue 
        if mem[(32 * ('cd', 68).length - 2) + (32 * ('cd', 68).length - 1) + 352] < cd[132]:
            revert with 0, '3'
        require 0 < ('cd', 68).length
        require ('cd', 68)[0] == address(('cd', 68)[0])
        require 1 < ('cd', 68).length
        require ('cd', 68)[1] == address(('cd', 68)[1])
        mem[(64 * ('cd', 68).length - 1) + 384] = address(cd[36])
        mem[(64 * ('cd', 68).length - 1) + 416] = 96
        mem[(64 * ('cd', 68).length - 1) + 480] = ('cd', 68).length - 1
        mem[(64 * ('cd', 68).length - 1) + 512 len 32 * ('cd', 68).length - 1] = mem[(32 * ('cd', 68).length - 1) + 352 len 32 * ('cd', 68).length - 1]
        mem[(64 * ('cd', 68).length - 1) + 448] = (32 * ('cd', 68).length - 1) + 128
        mem[(98 * ('cd', 68).length) + 414] = ('cd', 68).length - 1
        idx = 0
        s = 224
        t = (98 * ('cd', 68).length) + 446
        while idx < ('cd', 68).length - 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + 450] = address(('cd', 68)[1])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + 482] = address(('cd', 68)[0])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(('cd', 68)[1]), address(('cd', 68)[0])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + 446] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require mem[(32 * ('cd', 68).length - 1) + 224] - 1 < mem[(32 * ('cd', 68).length - 1) + 224]
        _2763 = mem[(32 * mem[(32 * ('cd', 68).length - 1) + 224] - 1) + (32 * ('cd', 68).length - 1) + 256]
        if 0xb4508fcddab3238e2321a17569f134706eb1f65e != msg.sender:
            revert with 0, '1'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + ceil32(return_data.size) + 446] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (2 * ceil32(return_data.size)) + 446] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478] = _2763
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 510] = address(('cd', 68)[1])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 542] = address(ext_call.return_data[0])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 574] = address(ext_call.return_data[0])
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 606] = 160
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 638] = mem[(64 * ('cd', 68).length - 1) + 352]
        mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 670 len ceil32(mem[(64 * ('cd', 68).length - 1) + 352])] = mem[(64 * ('cd', 68).length - 1) + 384 len ceil32(mem[(64 * ('cd', 68).length - 1) + 352])]
        stor0 = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        if address(('cd', 68)[1]) != address(ext_call.return_data[0]):
            if ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) <= mem[(64 * ('cd', 68).length - 1) + 352]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _2763, address(this.address), 128, ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) + 192, mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478 len ceil32(ceil32(mem[(64 * ('cd', 68).length - 1) + 352])) + 6]
            else:
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args 0, _2763, address(this.address), 128, ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) + 192, mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478 len ceil32(ceil32(mem[(64 * ('cd', 68).length - 1) + 352])) + 6]
        else:
            if ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) <= mem[(64 * ('cd', 68).length - 1) + 352]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _2763, 0, address(this.address), 128, ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) + 192, mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478 len ceil32(ceil32(mem[(64 * ('cd', 68).length - 1) + 352])) + 6]
            else:
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args _2763, 0, address(this.address), 128, ceil32(mem[(64 * ('cd', 68).length - 1) + 352]) + 192, mem[(98 * ('cd', 68).length) + (32 * ('cd', 68).length - 1) + (4 * ceil32(return_data.size)) + 478 len ceil32(ceil32(mem[(64 * ('cd', 68).length - 1) + 352])) + 6]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '4'
    require msg.sender == stor0
    require arg4.length >= 160
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] <= test266151307()
    require arg4 + cd[(arg4 + 164)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 >= 96
    mem[96] = cd[(arg4 + cd[(arg4 + 164)] + 36)]
    require cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 997 * 0, ext_call.return_data[4 len 28]
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 96
    _13 = mem[128]
    require mem[128] == mem[140 len 20]
    _14 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _15 = mem[mem[160] + 128]
    require mem[mem[160] + 128] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160 <= test266151307() and (32 * mem[mem[160] + 128]) + 160 >= 128
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128] = mem[mem[160] + 128]
    require _14 + (32 * _15) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _14 + 160
    t = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _113 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _114 = mem[mem[192] + 128]
    require mem[mem[192] + 128] <= test266151307()
    _115 = mem[64]
    require mem[64] + (32 * mem[mem[192] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[192] + 128]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_115] = mem[mem[192] + 128]
    require _113 + (32 * _114) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _113 + 160
    t = _115 + 32
    while idx < _114:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _114
    _839 = mem[_115 + 32]
    require 0 < _114
    require 1 < _114
    _843 = mem[_115 + 64]
    mem[mem[64] + 4] = mem[_115 + 44 len 20]
    mem[mem[64] + 36] = address(_843)
    require ext_code.size(address(_13))
    staticcall address(_13).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_843)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
    _849 = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
    _850 = mem[64]
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    mem[mem[64] + 68] = _849
    _851 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_851 + 32 len 4] = unknown_0xa9059cbb(?????)
    _854 = mem[_851]
    mem[mem[64] len floor32(mem[_851])] = mem[_851 + 32 len floor32(mem[_851])]
    mem[mem[64] + floor32(mem[_851]) + -(mem[_851] % 32) + 32 len mem[_851] % 32] = mem[_851 + floor32(mem[_851]) + -(mem[_851] % 32) + 64 len mem[_851] % 32]
    call address(_839) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _854 + _850 + -mem[64] + 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'ST'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'ST'
            _2262 = mem[_115]
            idx = 0
            while idx < _2262 - 1:
                require idx < mem[_115]
                _2271 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2288 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2391 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2613 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2613 + 36] = 0
                            mem[_2613 + 68] = _2391
                            mem[_2613 + 100] = this.address
                            mem[_2613 + 132] = 128
                            mem[_2613 + 164] = mem[_2613]
                            s = 0
                            while s < mem[_2613]:
                                mem[_2613 + s + 196] = mem[_2613 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2613]) > mem[_2613]:
                                mem[_2613 + mem[_2613] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(this.address), 128, mem[_2613], mem[_2613 + 196 len ceil32(mem[_2613])]
                        else:
                            require idx + 2 < mem[_115]
                            _2461 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2461)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2717 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2717 + 36] = 0
                            mem[_2717 + 68] = _2391
                            mem[_2717 + 100] = address(ext_call.return_data[0])
                            mem[_2717 + 132] = 128
                            mem[_2717 + 164] = mem[_2717]
                            s = 0
                            while s < mem[_2717]:
                                mem[_2717 + s + 196] = mem[_2717 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2717]) > mem[_2717]:
                                mem[_2717 + mem[_2717] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(ext_call.return_data[0]), 128, mem[_2717], mem[_2717 + 196 len ceil32(mem[_2717])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2614 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2614 + 36] = _2391
                            mem[_2614 + 68] = 0
                            mem[_2614 + 100] = this.address
                            mem[_2614 + 132] = 128
                            mem[_2614 + 164] = mem[_2614]
                            s = 0
                            while s < mem[_2614]:
                                mem[_2614 + s + 196] = mem[_2614 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2614]) > mem[_2614]:
                                mem[_2614 + mem[_2614] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(this.address), 128, mem[_2614], mem[_2614 + 196 len ceil32(mem[_2614])]
                        else:
                            require idx + 2 < mem[_115]
                            _2462 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2462)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2718 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2718 + 36] = _2391
                            mem[_2718 + 68] = 0
                            mem[_2718 + 100] = address(ext_call.return_data[0])
                            mem[_2718 + 132] = 128
                            mem[_2718 + 164] = mem[_2718]
                            s = 0
                            while s < mem[_2718]:
                                mem[_2718 + s + 196] = mem[_2718 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2718]) > mem[_2718]:
                                mem[_2718 + mem[_2718] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(ext_call.return_data[0]), 128, mem[_2718], mem[_2718 + 196 len ceil32(mem[_2718])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2392 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2615 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2615 + 36] = 0
                            mem[_2615 + 68] = _2392
                            mem[_2615 + 100] = this.address
                            mem[_2615 + 132] = 128
                            mem[_2615 + 164] = mem[_2615]
                            s = 0
                            while s < mem[_2615]:
                                mem[_2615 + s + 196] = mem[_2615 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2615]) > mem[_2615]:
                                mem[_2615 + mem[_2615] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(this.address), 128, mem[_2615], mem[_2615 + 196 len ceil32(mem[_2615])]
                        else:
                            require idx + 2 < mem[_115]
                            _2463 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2463)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2719 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2719 + 36] = 0
                            mem[_2719 + 68] = _2392
                            mem[_2719 + 100] = address(ext_call.return_data[0])
                            mem[_2719 + 132] = 128
                            mem[_2719 + 164] = mem[_2719]
                            s = 0
                            while s < mem[_2719]:
                                mem[_2719 + s + 196] = mem[_2719 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2719]) > mem[_2719]:
                                mem[_2719 + mem[_2719] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(ext_call.return_data[0]), 128, mem[_2719], mem[_2719 + 196 len ceil32(mem[_2719])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2616 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2616 + 36] = _2392
                            mem[_2616 + 68] = 0
                            mem[_2616 + 100] = this.address
                            mem[_2616 + 132] = 128
                            mem[_2616 + 164] = mem[_2616]
                            s = 0
                            while s < mem[_2616]:
                                mem[_2616 + s + 196] = mem[_2616 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2616]) > mem[_2616]:
                                mem[_2616 + mem[_2616] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(this.address), 128, mem[_2616], mem[_2616 + 196 len ceil32(mem[_2616])]
                        else:
                            require idx + 2 < mem[_115]
                            _2464 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2464)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2720 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2720 + 36] = _2392
                            mem[_2720 + 68] = 0
                            mem[_2720 + 100] = address(ext_call.return_data[0])
                            mem[_2720 + 132] = 128
                            mem[_2720 + 164] = mem[_2720]
                            s = 0
                            while s < mem[_2720]:
                                mem[_2720 + s + 196] = mem[_2720 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2720]) > mem[_2720]:
                                mem[_2720 + mem[_2720] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(ext_call.return_data[0]), 128, mem[_2720], mem[_2720 + 196 len ceil32(mem[_2720])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2262 = mem[_115]
                idx = idx + 1
                continue 
            _2283 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2284 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2284 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2287 = mem[_2284]
            mem[_2283 + 100 len floor32(mem[_2284])] = mem[_2284 + 32 len floor32(mem[_2284])]
            mem[_2283 + floor32(mem[_2284]) + -(mem[_2284] % 32) + 132 len mem[_2284] % 32] = mem[_2284 + -(mem[_2284] % 32) + floor32(mem[_2284]) + 64 len mem[_2284] % 32]
            call address(cd[(arg4 + 100)]).mem[_2283 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_2283 + 104 len _2287 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
            else:
                mem[_2283 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2283 + 132]:
                        revert with 0, 'ST'
            if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            _2261 = mem[_115]
            idx = 0
            while idx < _2261 - 1:
                require idx < mem[_115]
                _2269 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2282 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2387 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2609 + 36] = 0
                            mem[_2609 + 68] = _2387
                            mem[_2609 + 100] = this.address
                            mem[_2609 + 132] = 128
                            mem[_2609 + 164] = mem[_2609]
                            s = 0
                            while s < mem[_2609]:
                                mem[_2609 + s + 196] = mem[_2609 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2609]) > mem[_2609]:
                                mem[_2609 + mem[_2609] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(this.address), 128, mem[_2609], mem[_2609 + 196 len ceil32(mem[_2609])]
                        else:
                            require idx + 2 < mem[_115]
                            _2457 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2457)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2713 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2713 + 36] = 0
                            mem[_2713 + 68] = _2387
                            mem[_2713 + 100] = address(ext_call.return_data[0])
                            mem[_2713 + 132] = 128
                            mem[_2713 + 164] = mem[_2713]
                            s = 0
                            while s < mem[_2713]:
                                mem[_2713 + s + 196] = mem[_2713 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2713]) > mem[_2713]:
                                mem[_2713 + mem[_2713] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(ext_call.return_data[0]), 128, mem[_2713], mem[_2713 + 196 len ceil32(mem[_2713])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2610 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2610 + 36] = _2387
                            mem[_2610 + 68] = 0
                            mem[_2610 + 100] = this.address
                            mem[_2610 + 132] = 128
                            mem[_2610 + 164] = mem[_2610]
                            s = 0
                            while s < mem[_2610]:
                                mem[_2610 + s + 196] = mem[_2610 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2610]) > mem[_2610]:
                                mem[_2610 + mem[_2610] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(this.address), 128, mem[_2610], mem[_2610 + 196 len ceil32(mem[_2610])]
                        else:
                            require idx + 2 < mem[_115]
                            _2458 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2458)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2714 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2714 + 36] = _2387
                            mem[_2714 + 68] = 0
                            mem[_2714 + 100] = address(ext_call.return_data[0])
                            mem[_2714 + 132] = 128
                            mem[_2714 + 164] = mem[_2714]
                            s = 0
                            while s < mem[_2714]:
                                mem[_2714 + s + 196] = mem[_2714 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2714]) > mem[_2714]:
                                mem[_2714 + mem[_2714] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(ext_call.return_data[0]), 128, mem[_2714], mem[_2714 + 196 len ceil32(mem[_2714])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2388 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2611 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2611 + 36] = 0
                            mem[_2611 + 68] = _2388
                            mem[_2611 + 100] = this.address
                            mem[_2611 + 132] = 128
                            mem[_2611 + 164] = mem[_2611]
                            s = 0
                            while s < mem[_2611]:
                                mem[_2611 + s + 196] = mem[_2611 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2611]) > mem[_2611]:
                                mem[_2611 + mem[_2611] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(this.address), 128, mem[_2611], mem[_2611 + 196 len ceil32(mem[_2611])]
                        else:
                            require idx + 2 < mem[_115]
                            _2459 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2459)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2715 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2715 + 36] = 0
                            mem[_2715 + 68] = _2388
                            mem[_2715 + 100] = address(ext_call.return_data[0])
                            mem[_2715 + 132] = 128
                            mem[_2715 + 164] = mem[_2715]
                            s = 0
                            while s < mem[_2715]:
                                mem[_2715 + s + 196] = mem[_2715 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2715]) > mem[_2715]:
                                mem[_2715 + mem[_2715] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(ext_call.return_data[0]), 128, mem[_2715], mem[_2715 + 196 len ceil32(mem[_2715])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2612 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2612 + 36] = _2388
                            mem[_2612 + 68] = 0
                            mem[_2612 + 100] = this.address
                            mem[_2612 + 132] = 128
                            mem[_2612 + 164] = mem[_2612]
                            s = 0
                            while s < mem[_2612]:
                                mem[_2612 + s + 196] = mem[_2612 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2612]) > mem[_2612]:
                                mem[_2612 + mem[_2612] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(this.address), 128, mem[_2612], mem[_2612 + 196 len ceil32(mem[_2612])]
                        else:
                            require idx + 2 < mem[_115]
                            _2460 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2460)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2716 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2716 + 36] = _2388
                            mem[_2716 + 68] = 0
                            mem[_2716 + 100] = address(ext_call.return_data[0])
                            mem[_2716 + 132] = 128
                            mem[_2716 + 164] = mem[_2716]
                            s = 0
                            while s < mem[_2716]:
                                mem[_2716 + s + 196] = mem[_2716 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2716]) > mem[_2716]:
                                mem[_2716 + mem[_2716] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(ext_call.return_data[0]), 128, mem[_2716], mem[_2716 + 196 len ceil32(mem[_2716])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[_115]
                idx = idx + 1
                continue 
            _2277 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2278 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2278 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2281 = mem[_2278]
            mem[mem[64] len floor32(mem[_2278])] = mem[_2278 + 32 len floor32(mem[_2278])]
            mem[mem[64] + floor32(mem[_2278]) + -(mem[_2278] % 32) + 32 len mem[_2278] % 32] = mem[_2278 + floor32(mem[_2278]) + -(mem[_2278] % 32) + 64 len mem[_2278] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2281 + _2277 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3141] == mem[_3141]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3141]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3157] == mem[_3157]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3157]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2993 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2993] = return_data.size
                mem[_2993 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3143] == mem[_3143]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3143]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2993 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3158] == mem[_3158]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3158]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        _1562 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1562] = return_data.size
        mem[_1562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'ST'
        if not return_data.size:
            _2263 = mem[_115]
            idx = 0
            while idx < _2263 - 1:
                require idx < mem[_115]
                _2273 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2294 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2395 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2617 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2617 + 36] = 0
                            mem[_2617 + 68] = _2395
                            mem[_2617 + 100] = this.address
                            mem[_2617 + 132] = 128
                            mem[_2617 + 164] = mem[_2617]
                            s = 0
                            while s < mem[_2617]:
                                mem[_2617 + s + 196] = mem[_2617 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2617]) > mem[_2617]:
                                mem[_2617 + mem[_2617] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(this.address), 128, mem[_2617], mem[_2617 + 196 len ceil32(mem[_2617])]
                        else:
                            require idx + 2 < mem[_115]
                            _2465 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2465)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2721 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2721 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2721 + 36] = 0
                            mem[_2721 + 68] = _2395
                            mem[_2721 + 100] = address(ext_call.return_data[0])
                            mem[_2721 + 132] = 128
                            mem[_2721 + 164] = mem[_2721]
                            s = 0
                            while s < mem[_2721]:
                                mem[_2721 + s + 196] = mem[_2721 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2721]) > mem[_2721]:
                                mem[_2721 + mem[_2721] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(ext_call.return_data[0]), 128, mem[_2721], mem[_2721 + 196 len ceil32(mem[_2721])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2618 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2618 + 36] = _2395
                            mem[_2618 + 68] = 0
                            mem[_2618 + 100] = this.address
                            mem[_2618 + 132] = 128
                            mem[_2618 + 164] = mem[_2618]
                            s = 0
                            while s < mem[_2618]:
                                mem[_2618 + s + 196] = mem[_2618 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2618]) > mem[_2618]:
                                mem[_2618 + mem[_2618] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(this.address), 128, mem[_2618], mem[_2618 + 196 len ceil32(mem[_2618])]
                        else:
                            require idx + 2 < mem[_115]
                            _2466 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2466)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2722 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2722 + 36] = _2395
                            mem[_2722 + 68] = 0
                            mem[_2722 + 100] = address(ext_call.return_data[0])
                            mem[_2722 + 132] = 128
                            mem[_2722 + 164] = mem[_2722]
                            s = 0
                            while s < mem[_2722]:
                                mem[_2722 + s + 196] = mem[_2722 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2722]) > mem[_2722]:
                                mem[_2722 + mem[_2722] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(ext_call.return_data[0]), 128, mem[_2722], mem[_2722 + 196 len ceil32(mem[_2722])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2396 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2619 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2619 + 36] = 0
                            mem[_2619 + 68] = _2396
                            mem[_2619 + 100] = this.address
                            mem[_2619 + 132] = 128
                            mem[_2619 + 164] = mem[_2619]
                            s = 0
                            while s < mem[_2619]:
                                mem[_2619 + s + 196] = mem[_2619 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2619]) > mem[_2619]:
                                mem[_2619 + mem[_2619] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(this.address), 128, mem[_2619], mem[_2619 + 196 len ceil32(mem[_2619])]
                        else:
                            require idx + 2 < mem[_115]
                            _2467 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2467)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2723 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2723 + 36] = 0
                            mem[_2723 + 68] = _2396
                            mem[_2723 + 100] = address(ext_call.return_data[0])
                            mem[_2723 + 132] = 128
                            mem[_2723 + 164] = mem[_2723]
                            s = 0
                            while s < mem[_2723]:
                                mem[_2723 + s + 196] = mem[_2723 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2723]) > mem[_2723]:
                                mem[_2723 + mem[_2723] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(ext_call.return_data[0]), 128, mem[_2723], mem[_2723 + 196 len ceil32(mem[_2723])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2620 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2620 + 36] = _2396
                            mem[_2620 + 68] = 0
                            mem[_2620 + 100] = this.address
                            mem[_2620 + 132] = 128
                            mem[_2620 + 164] = mem[_2620]
                            s = 0
                            while s < mem[_2620]:
                                mem[_2620 + s + 196] = mem[_2620 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2620]) > mem[_2620]:
                                mem[_2620 + mem[_2620] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(this.address), 128, mem[_2620], mem[_2620 + 196 len ceil32(mem[_2620])]
                        else:
                            require idx + 2 < mem[_115]
                            _2468 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2468)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2724 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2724 + 36] = _2396
                            mem[_2724 + 68] = 0
                            mem[_2724 + 100] = address(ext_call.return_data[0])
                            mem[_2724 + 132] = 128
                            mem[_2724 + 164] = mem[_2724]
                            s = 0
                            while s < mem[_2724]:
                                mem[_2724 + s + 196] = mem[_2724 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2724]) > mem[_2724]:
                                mem[_2724 + mem[_2724] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(ext_call.return_data[0]), 128, mem[_2724], mem[_2724 + 196 len ceil32(mem[_2724])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2263 = mem[_115]
                idx = idx + 1
                continue 
            _2289 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2290 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2290 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2293 = mem[_2290]
            mem[mem[64] len floor32(mem[_2290])] = mem[_2290 + 32 len floor32(mem[_2290])]
            mem[mem[64] + floor32(mem[_2290]) + -(mem[_2290] % 32) + 32 len mem[_2290] % 32] = mem[_2290 + floor32(mem[_2290]) + -(mem[_2290] % 32) + 64 len mem[_2290] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2293 + _2289 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3149] == mem[_3149]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3149]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3161] == mem[_3161]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3161]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2995 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2995] = return_data.size
                mem[_2995 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3151] == mem[_3151]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3151]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2995 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3162] == mem[_3162]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3162]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if not mem[_1562 + 32]:
                revert with 0, 'ST'
            _2264 = mem[_115]
            idx = 0
            while idx < _2264 - 1:
                require idx < mem[_115]
                _2275 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2300 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2399 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2621 + 36] = 0
                            mem[_2621 + 68] = _2399
                            mem[_2621 + 100] = this.address
                            mem[_2621 + 132] = 128
                            mem[_2621 + 164] = mem[_2621]
                            s = 0
                            while s < mem[_2621]:
                                mem[_2621 + s + 196] = mem[_2621 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2621]) > mem[_2621]:
                                mem[_2621 + mem[_2621] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(this.address), 128, mem[_2621], mem[_2621 + 196 len ceil32(mem[_2621])]
                        else:
                            require idx + 2 < mem[_115]
                            _2469 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2469)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2725 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2725 + 36] = 0
                            mem[_2725 + 68] = _2399
                            mem[_2725 + 100] = address(ext_call.return_data[0])
                            mem[_2725 + 132] = 128
                            mem[_2725 + 164] = mem[_2725]
                            s = 0
                            while s < mem[_2725]:
                                mem[_2725 + s + 196] = mem[_2725 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2725]) > mem[_2725]:
                                mem[_2725 + mem[_2725] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(ext_call.return_data[0]), 128, mem[_2725], mem[_2725 + 196 len ceil32(mem[_2725])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2622 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 36] = _2399
                            mem[_2622 + 68] = 0
                            mem[_2622 + 100] = this.address
                            mem[_2622 + 132] = 128
                            mem[_2622 + 164] = mem[_2622]
                            s = 0
                            while s < mem[_2622]:
                                mem[_2622 + s + 196] = mem[_2622 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2622]) > mem[_2622]:
                                mem[_2622 + mem[_2622] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(this.address), 128, mem[_2622], mem[_2622 + 196 len ceil32(mem[_2622])]
                        else:
                            require idx + 2 < mem[_115]
                            _2470 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2470)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2726 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2726 + 36] = _2399
                            mem[_2726 + 68] = 0
                            mem[_2726 + 100] = address(ext_call.return_data[0])
                            mem[_2726 + 132] = 128
                            mem[_2726 + 164] = mem[_2726]
                            s = 0
                            while s < mem[_2726]:
                                mem[_2726 + s + 196] = mem[_2726 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2726]) > mem[_2726]:
                                mem[_2726 + mem[_2726] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(ext_call.return_data[0]), 128, mem[_2726], mem[_2726 + 196 len ceil32(mem[_2726])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2400 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2623 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2623 + 36] = 0
                            mem[_2623 + 68] = _2400
                            mem[_2623 + 100] = this.address
                            mem[_2623 + 132] = 128
                            mem[_2623 + 164] = mem[_2623]
                            s = 0
                            while s < mem[_2623]:
                                mem[_2623 + s + 196] = mem[_2623 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2623]) > mem[_2623]:
                                mem[_2623 + mem[_2623] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(this.address), 128, mem[_2623], mem[_2623 + 196 len ceil32(mem[_2623])]
                        else:
                            require idx + 2 < mem[_115]
                            _2471 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2471)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2727 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2727 + 36] = 0
                            mem[_2727 + 68] = _2400
                            mem[_2727 + 100] = address(ext_call.return_data[0])
                            mem[_2727 + 132] = 128
                            mem[_2727 + 164] = mem[_2727]
                            s = 0
                            while s < mem[_2727]:
                                mem[_2727 + s + 196] = mem[_2727 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2727]) > mem[_2727]:
                                mem[_2727 + mem[_2727] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(ext_call.return_data[0]), 128, mem[_2727], mem[_2727 + 196 len ceil32(mem[_2727])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2624 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2624 + 36] = _2400
                            mem[_2624 + 68] = 0
                            mem[_2624 + 100] = this.address
                            mem[_2624 + 132] = 128
                            mem[_2624 + 164] = mem[_2624]
                            s = 0
                            while s < mem[_2624]:
                                mem[_2624 + s + 196] = mem[_2624 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2624]) > mem[_2624]:
                                mem[_2624 + mem[_2624] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(this.address), 128, mem[_2624], mem[_2624 + 196 len ceil32(mem[_2624])]
                        else:
                            require idx + 2 < mem[_115]
                            _2472 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2472)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2728 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2728 + 36] = _2400
                            mem[_2728 + 68] = 0
                            mem[_2728 + 100] = address(ext_call.return_data[0])
                            mem[_2728 + 132] = 128
                            mem[_2728 + 164] = mem[_2728]
                            s = 0
                            while s < mem[_2728]:
                                mem[_2728 + s + 196] = mem[_2728 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2728]) > mem[_2728]:
                                mem[_2728 + mem[_2728] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(ext_call.return_data[0]), 128, mem[_2728], mem[_2728 + 196 len ceil32(mem[_2728])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2264 = mem[_115]
                idx = idx + 1
                continue 
            _2295 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2296 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2296 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2299 = mem[_2296]
            mem[mem[64] len floor32(mem[_2296])] = mem[_2296 + 32 len floor32(mem[_2296])]
            mem[mem[64] + floor32(mem[_2296]) + -(mem[_2296] % 32) + 32 len mem[_2296] % 32] = mem[_2296 + floor32(mem[_2296]) + -(mem[_2296] % 32) + 64 len mem[_2296] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2299 + _2295 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3153] == mem[_3153]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3153]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3163] == mem[_3163]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3163]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2996] = return_data.size
                mem[_2996 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3155] == mem[_3155]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3155]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2996 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3164] == mem[_3164]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '4'
    require msg.sender == stor0
    require arg4.length >= 160
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] <= test266151307()
    require arg4 + cd[(arg4 + 164)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 >= 96
    mem[96] = cd[(arg4 + cd[(arg4 + 164)] + 36)]
    require cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 997 * 0, ext_call.return_data[4 len 28]
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 96
    _13 = mem[128]
    require mem[128] == mem[140 len 20]
    _14 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _15 = mem[mem[160] + 128]
    require mem[mem[160] + 128] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160 <= test266151307() and (32 * mem[mem[160] + 128]) + 160 >= 128
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128] = mem[mem[160] + 128]
    require _14 + (32 * _15) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _14 + 160
    t = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _113 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _114 = mem[mem[192] + 128]
    require mem[mem[192] + 128] <= test266151307()
    _115 = mem[64]
    require mem[64] + (32 * mem[mem[192] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[192] + 128]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_115] = mem[mem[192] + 128]
    require _113 + (32 * _114) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _113 + 160
    t = _115 + 32
    while idx < _114:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _114
    _839 = mem[_115 + 32]
    require 0 < _114
    require 1 < _114
    _843 = mem[_115 + 64]
    mem[mem[64] + 4] = mem[_115 + 44 len 20]
    mem[mem[64] + 36] = address(_843)
    require ext_code.size(address(_13))
    staticcall address(_13).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_843)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
    _849 = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
    _850 = mem[64]
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    mem[mem[64] + 68] = _849
    _851 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_851 + 32 len 4] = unknown_0xa9059cbb(?????)
    _854 = mem[_851]
    mem[mem[64] len floor32(mem[_851])] = mem[_851 + 32 len floor32(mem[_851])]
    mem[mem[64] + floor32(mem[_851]) + -(mem[_851] % 32) + 32 len mem[_851] % 32] = mem[_851 + floor32(mem[_851]) + -(mem[_851] % 32) + 64 len mem[_851] % 32]
    call address(_839) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _854 + _850 + -mem[64] + 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'ST'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'ST'
            _2262 = mem[_115]
            idx = 0
            while idx < _2262 - 1:
                require idx < mem[_115]
                _2271 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2288 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2391 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2613 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2613 + 36] = 0
                            mem[_2613 + 68] = _2391
                            mem[_2613 + 100] = this.address
                            mem[_2613 + 132] = 128
                            mem[_2613 + 164] = mem[_2613]
                            s = 0
                            while s < mem[_2613]:
                                mem[_2613 + s + 196] = mem[_2613 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2613]) > mem[_2613]:
                                mem[_2613 + mem[_2613] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(this.address), 128, mem[_2613], mem[_2613 + 196 len ceil32(mem[_2613])]
                        else:
                            require idx + 2 < mem[_115]
                            _2461 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2461)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2717 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2717 + 36] = 0
                            mem[_2717 + 68] = _2391
                            mem[_2717 + 100] = address(ext_call.return_data[0])
                            mem[_2717 + 132] = 128
                            mem[_2717 + 164] = mem[_2717]
                            s = 0
                            while s < mem[_2717]:
                                mem[_2717 + s + 196] = mem[_2717 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2717]) > mem[_2717]:
                                mem[_2717 + mem[_2717] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(ext_call.return_data[0]), 128, mem[_2717], mem[_2717 + 196 len ceil32(mem[_2717])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2614 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2614 + 36] = _2391
                            mem[_2614 + 68] = 0
                            mem[_2614 + 100] = this.address
                            mem[_2614 + 132] = 128
                            mem[_2614 + 164] = mem[_2614]
                            s = 0
                            while s < mem[_2614]:
                                mem[_2614 + s + 196] = mem[_2614 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2614]) > mem[_2614]:
                                mem[_2614 + mem[_2614] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(this.address), 128, mem[_2614], mem[_2614 + 196 len ceil32(mem[_2614])]
                        else:
                            require idx + 2 < mem[_115]
                            _2462 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2462)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2718 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2718 + 36] = _2391
                            mem[_2718 + 68] = 0
                            mem[_2718 + 100] = address(ext_call.return_data[0])
                            mem[_2718 + 132] = 128
                            mem[_2718 + 164] = mem[_2718]
                            s = 0
                            while s < mem[_2718]:
                                mem[_2718 + s + 196] = mem[_2718 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2718]) > mem[_2718]:
                                mem[_2718 + mem[_2718] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(ext_call.return_data[0]), 128, mem[_2718], mem[_2718 + 196 len ceil32(mem[_2718])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2392 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2615 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2615 + 36] = 0
                            mem[_2615 + 68] = _2392
                            mem[_2615 + 100] = this.address
                            mem[_2615 + 132] = 128
                            mem[_2615 + 164] = mem[_2615]
                            s = 0
                            while s < mem[_2615]:
                                mem[_2615 + s + 196] = mem[_2615 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2615]) > mem[_2615]:
                                mem[_2615 + mem[_2615] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(this.address), 128, mem[_2615], mem[_2615 + 196 len ceil32(mem[_2615])]
                        else:
                            require idx + 2 < mem[_115]
                            _2463 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2463)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2719 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2719 + 36] = 0
                            mem[_2719 + 68] = _2392
                            mem[_2719 + 100] = address(ext_call.return_data[0])
                            mem[_2719 + 132] = 128
                            mem[_2719 + 164] = mem[_2719]
                            s = 0
                            while s < mem[_2719]:
                                mem[_2719 + s + 196] = mem[_2719 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2719]) > mem[_2719]:
                                mem[_2719 + mem[_2719] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(ext_call.return_data[0]), 128, mem[_2719], mem[_2719 + 196 len ceil32(mem[_2719])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2616 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2616 + 36] = _2392
                            mem[_2616 + 68] = 0
                            mem[_2616 + 100] = this.address
                            mem[_2616 + 132] = 128
                            mem[_2616 + 164] = mem[_2616]
                            s = 0
                            while s < mem[_2616]:
                                mem[_2616 + s + 196] = mem[_2616 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2616]) > mem[_2616]:
                                mem[_2616 + mem[_2616] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(this.address), 128, mem[_2616], mem[_2616 + 196 len ceil32(mem[_2616])]
                        else:
                            require idx + 2 < mem[_115]
                            _2464 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2464)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2720 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2720 + 36] = _2392
                            mem[_2720 + 68] = 0
                            mem[_2720 + 100] = address(ext_call.return_data[0])
                            mem[_2720 + 132] = 128
                            mem[_2720 + 164] = mem[_2720]
                            s = 0
                            while s < mem[_2720]:
                                mem[_2720 + s + 196] = mem[_2720 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2720]) > mem[_2720]:
                                mem[_2720 + mem[_2720] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(ext_call.return_data[0]), 128, mem[_2720], mem[_2720 + 196 len ceil32(mem[_2720])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2262 = mem[_115]
                idx = idx + 1
                continue 
            _2283 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2284 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2284 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2287 = mem[_2284]
            mem[_2283 + 100 len floor32(mem[_2284])] = mem[_2284 + 32 len floor32(mem[_2284])]
            mem[_2283 + floor32(mem[_2284]) + -(mem[_2284] % 32) + 132 len mem[_2284] % 32] = mem[_2284 + -(mem[_2284] % 32) + floor32(mem[_2284]) + 64 len mem[_2284] % 32]
            call address(cd[(arg4 + 100)]).mem[_2283 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_2283 + 104 len _2287 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
            else:
                mem[_2283 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2283 + 132]:
                        revert with 0, 'ST'
            if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            _2261 = mem[_115]
            idx = 0
            while idx < _2261 - 1:
                require idx < mem[_115]
                _2269 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2282 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2387 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2609 + 36] = 0
                            mem[_2609 + 68] = _2387
                            mem[_2609 + 100] = this.address
                            mem[_2609 + 132] = 128
                            mem[_2609 + 164] = mem[_2609]
                            s = 0
                            while s < mem[_2609]:
                                mem[_2609 + s + 196] = mem[_2609 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2609]) > mem[_2609]:
                                mem[_2609 + mem[_2609] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(this.address), 128, mem[_2609], mem[_2609 + 196 len ceil32(mem[_2609])]
                        else:
                            require idx + 2 < mem[_115]
                            _2457 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2457)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2713 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2713 + 36] = 0
                            mem[_2713 + 68] = _2387
                            mem[_2713 + 100] = address(ext_call.return_data[0])
                            mem[_2713 + 132] = 128
                            mem[_2713 + 164] = mem[_2713]
                            s = 0
                            while s < mem[_2713]:
                                mem[_2713 + s + 196] = mem[_2713 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2713]) > mem[_2713]:
                                mem[_2713 + mem[_2713] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(ext_call.return_data[0]), 128, mem[_2713], mem[_2713 + 196 len ceil32(mem[_2713])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2610 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2610 + 36] = _2387
                            mem[_2610 + 68] = 0
                            mem[_2610 + 100] = this.address
                            mem[_2610 + 132] = 128
                            mem[_2610 + 164] = mem[_2610]
                            s = 0
                            while s < mem[_2610]:
                                mem[_2610 + s + 196] = mem[_2610 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2610]) > mem[_2610]:
                                mem[_2610 + mem[_2610] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(this.address), 128, mem[_2610], mem[_2610 + 196 len ceil32(mem[_2610])]
                        else:
                            require idx + 2 < mem[_115]
                            _2458 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2458)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2714 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2714 + 36] = _2387
                            mem[_2714 + 68] = 0
                            mem[_2714 + 100] = address(ext_call.return_data[0])
                            mem[_2714 + 132] = 128
                            mem[_2714 + 164] = mem[_2714]
                            s = 0
                            while s < mem[_2714]:
                                mem[_2714 + s + 196] = mem[_2714 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2714]) > mem[_2714]:
                                mem[_2714 + mem[_2714] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(ext_call.return_data[0]), 128, mem[_2714], mem[_2714 + 196 len ceil32(mem[_2714])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2388 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2611 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2611 + 36] = 0
                            mem[_2611 + 68] = _2388
                            mem[_2611 + 100] = this.address
                            mem[_2611 + 132] = 128
                            mem[_2611 + 164] = mem[_2611]
                            s = 0
                            while s < mem[_2611]:
                                mem[_2611 + s + 196] = mem[_2611 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2611]) > mem[_2611]:
                                mem[_2611 + mem[_2611] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(this.address), 128, mem[_2611], mem[_2611 + 196 len ceil32(mem[_2611])]
                        else:
                            require idx + 2 < mem[_115]
                            _2459 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2459)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2715 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2715 + 36] = 0
                            mem[_2715 + 68] = _2388
                            mem[_2715 + 100] = address(ext_call.return_data[0])
                            mem[_2715 + 132] = 128
                            mem[_2715 + 164] = mem[_2715]
                            s = 0
                            while s < mem[_2715]:
                                mem[_2715 + s + 196] = mem[_2715 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2715]) > mem[_2715]:
                                mem[_2715 + mem[_2715] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(ext_call.return_data[0]), 128, mem[_2715], mem[_2715 + 196 len ceil32(mem[_2715])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2612 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2612 + 36] = _2388
                            mem[_2612 + 68] = 0
                            mem[_2612 + 100] = this.address
                            mem[_2612 + 132] = 128
                            mem[_2612 + 164] = mem[_2612]
                            s = 0
                            while s < mem[_2612]:
                                mem[_2612 + s + 196] = mem[_2612 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2612]) > mem[_2612]:
                                mem[_2612 + mem[_2612] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(this.address), 128, mem[_2612], mem[_2612 + 196 len ceil32(mem[_2612])]
                        else:
                            require idx + 2 < mem[_115]
                            _2460 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2460)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2716 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2716 + 36] = _2388
                            mem[_2716 + 68] = 0
                            mem[_2716 + 100] = address(ext_call.return_data[0])
                            mem[_2716 + 132] = 128
                            mem[_2716 + 164] = mem[_2716]
                            s = 0
                            while s < mem[_2716]:
                                mem[_2716 + s + 196] = mem[_2716 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2716]) > mem[_2716]:
                                mem[_2716 + mem[_2716] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(ext_call.return_data[0]), 128, mem[_2716], mem[_2716 + 196 len ceil32(mem[_2716])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[_115]
                idx = idx + 1
                continue 
            _2277 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2278 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2278 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2281 = mem[_2278]
            mem[mem[64] len floor32(mem[_2278])] = mem[_2278 + 32 len floor32(mem[_2278])]
            mem[mem[64] + floor32(mem[_2278]) + -(mem[_2278] % 32) + 32 len mem[_2278] % 32] = mem[_2278 + floor32(mem[_2278]) + -(mem[_2278] % 32) + 64 len mem[_2278] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2281 + _2277 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3141] == mem[_3141]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3141]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3157] == mem[_3157]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3157]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2993 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2993] = return_data.size
                mem[_2993 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3143] == mem[_3143]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3143]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2993 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3158] == mem[_3158]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3158]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        _1562 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1562] = return_data.size
        mem[_1562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'ST'
        if not return_data.size:
            _2263 = mem[_115]
            idx = 0
            while idx < _2263 - 1:
                require idx < mem[_115]
                _2273 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2294 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2395 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2617 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2617 + 36] = 0
                            mem[_2617 + 68] = _2395
                            mem[_2617 + 100] = this.address
                            mem[_2617 + 132] = 128
                            mem[_2617 + 164] = mem[_2617]
                            s = 0
                            while s < mem[_2617]:
                                mem[_2617 + s + 196] = mem[_2617 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2617]) > mem[_2617]:
                                mem[_2617 + mem[_2617] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(this.address), 128, mem[_2617], mem[_2617 + 196 len ceil32(mem[_2617])]
                        else:
                            require idx + 2 < mem[_115]
                            _2465 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2465)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2721 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2721 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2721 + 36] = 0
                            mem[_2721 + 68] = _2395
                            mem[_2721 + 100] = address(ext_call.return_data[0])
                            mem[_2721 + 132] = 128
                            mem[_2721 + 164] = mem[_2721]
                            s = 0
                            while s < mem[_2721]:
                                mem[_2721 + s + 196] = mem[_2721 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2721]) > mem[_2721]:
                                mem[_2721 + mem[_2721] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(ext_call.return_data[0]), 128, mem[_2721], mem[_2721 + 196 len ceil32(mem[_2721])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2618 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2618 + 36] = _2395
                            mem[_2618 + 68] = 0
                            mem[_2618 + 100] = this.address
                            mem[_2618 + 132] = 128
                            mem[_2618 + 164] = mem[_2618]
                            s = 0
                            while s < mem[_2618]:
                                mem[_2618 + s + 196] = mem[_2618 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2618]) > mem[_2618]:
                                mem[_2618 + mem[_2618] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(this.address), 128, mem[_2618], mem[_2618 + 196 len ceil32(mem[_2618])]
                        else:
                            require idx + 2 < mem[_115]
                            _2466 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2466)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2722 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2722 + 36] = _2395
                            mem[_2722 + 68] = 0
                            mem[_2722 + 100] = address(ext_call.return_data[0])
                            mem[_2722 + 132] = 128
                            mem[_2722 + 164] = mem[_2722]
                            s = 0
                            while s < mem[_2722]:
                                mem[_2722 + s + 196] = mem[_2722 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2722]) > mem[_2722]:
                                mem[_2722 + mem[_2722] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(ext_call.return_data[0]), 128, mem[_2722], mem[_2722 + 196 len ceil32(mem[_2722])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2396 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2619 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2619 + 36] = 0
                            mem[_2619 + 68] = _2396
                            mem[_2619 + 100] = this.address
                            mem[_2619 + 132] = 128
                            mem[_2619 + 164] = mem[_2619]
                            s = 0
                            while s < mem[_2619]:
                                mem[_2619 + s + 196] = mem[_2619 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2619]) > mem[_2619]:
                                mem[_2619 + mem[_2619] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(this.address), 128, mem[_2619], mem[_2619 + 196 len ceil32(mem[_2619])]
                        else:
                            require idx + 2 < mem[_115]
                            _2467 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2467)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2723 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2723 + 36] = 0
                            mem[_2723 + 68] = _2396
                            mem[_2723 + 100] = address(ext_call.return_data[0])
                            mem[_2723 + 132] = 128
                            mem[_2723 + 164] = mem[_2723]
                            s = 0
                            while s < mem[_2723]:
                                mem[_2723 + s + 196] = mem[_2723 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2723]) > mem[_2723]:
                                mem[_2723 + mem[_2723] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(ext_call.return_data[0]), 128, mem[_2723], mem[_2723 + 196 len ceil32(mem[_2723])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2620 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2620 + 36] = _2396
                            mem[_2620 + 68] = 0
                            mem[_2620 + 100] = this.address
                            mem[_2620 + 132] = 128
                            mem[_2620 + 164] = mem[_2620]
                            s = 0
                            while s < mem[_2620]:
                                mem[_2620 + s + 196] = mem[_2620 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2620]) > mem[_2620]:
                                mem[_2620 + mem[_2620] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(this.address), 128, mem[_2620], mem[_2620 + 196 len ceil32(mem[_2620])]
                        else:
                            require idx + 2 < mem[_115]
                            _2468 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2468)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2724 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2724 + 36] = _2396
                            mem[_2724 + 68] = 0
                            mem[_2724 + 100] = address(ext_call.return_data[0])
                            mem[_2724 + 132] = 128
                            mem[_2724 + 164] = mem[_2724]
                            s = 0
                            while s < mem[_2724]:
                                mem[_2724 + s + 196] = mem[_2724 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2724]) > mem[_2724]:
                                mem[_2724 + mem[_2724] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(ext_call.return_data[0]), 128, mem[_2724], mem[_2724 + 196 len ceil32(mem[_2724])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2263 = mem[_115]
                idx = idx + 1
                continue 
            _2289 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2290 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2290 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2293 = mem[_2290]
            mem[mem[64] len floor32(mem[_2290])] = mem[_2290 + 32 len floor32(mem[_2290])]
            mem[mem[64] + floor32(mem[_2290]) + -(mem[_2290] % 32) + 32 len mem[_2290] % 32] = mem[_2290 + floor32(mem[_2290]) + -(mem[_2290] % 32) + 64 len mem[_2290] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2293 + _2289 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3149] == mem[_3149]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3149]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3161] == mem[_3161]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3161]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2995 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2995] = return_data.size
                mem[_2995 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3151] == mem[_3151]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3151]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2995 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3162] == mem[_3162]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3162]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if not mem[_1562 + 32]:
                revert with 0, 'ST'
            _2264 = mem[_115]
            idx = 0
            while idx < _2264 - 1:
                require idx < mem[_115]
                _2275 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2300 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2399 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2621 + 36] = 0
                            mem[_2621 + 68] = _2399
                            mem[_2621 + 100] = this.address
                            mem[_2621 + 132] = 128
                            mem[_2621 + 164] = mem[_2621]
                            s = 0
                            while s < mem[_2621]:
                                mem[_2621 + s + 196] = mem[_2621 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2621]) > mem[_2621]:
                                mem[_2621 + mem[_2621] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(this.address), 128, mem[_2621], mem[_2621 + 196 len ceil32(mem[_2621])]
                        else:
                            require idx + 2 < mem[_115]
                            _2469 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2469)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2725 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2725 + 36] = 0
                            mem[_2725 + 68] = _2399
                            mem[_2725 + 100] = address(ext_call.return_data[0])
                            mem[_2725 + 132] = 128
                            mem[_2725 + 164] = mem[_2725]
                            s = 0
                            while s < mem[_2725]:
                                mem[_2725 + s + 196] = mem[_2725 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2725]) > mem[_2725]:
                                mem[_2725 + mem[_2725] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(ext_call.return_data[0]), 128, mem[_2725], mem[_2725 + 196 len ceil32(mem[_2725])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2622 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 36] = _2399
                            mem[_2622 + 68] = 0
                            mem[_2622 + 100] = this.address
                            mem[_2622 + 132] = 128
                            mem[_2622 + 164] = mem[_2622]
                            s = 0
                            while s < mem[_2622]:
                                mem[_2622 + s + 196] = mem[_2622 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2622]) > mem[_2622]:
                                mem[_2622 + mem[_2622] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(this.address), 128, mem[_2622], mem[_2622 + 196 len ceil32(mem[_2622])]
                        else:
                            require idx + 2 < mem[_115]
                            _2470 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2470)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2726 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2726 + 36] = _2399
                            mem[_2726 + 68] = 0
                            mem[_2726 + 100] = address(ext_call.return_data[0])
                            mem[_2726 + 132] = 128
                            mem[_2726 + 164] = mem[_2726]
                            s = 0
                            while s < mem[_2726]:
                                mem[_2726 + s + 196] = mem[_2726 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2726]) > mem[_2726]:
                                mem[_2726 + mem[_2726] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(ext_call.return_data[0]), 128, mem[_2726], mem[_2726 + 196 len ceil32(mem[_2726])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2400 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2623 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2623 + 36] = 0
                            mem[_2623 + 68] = _2400
                            mem[_2623 + 100] = this.address
                            mem[_2623 + 132] = 128
                            mem[_2623 + 164] = mem[_2623]
                            s = 0
                            while s < mem[_2623]:
                                mem[_2623 + s + 196] = mem[_2623 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2623]) > mem[_2623]:
                                mem[_2623 + mem[_2623] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(this.address), 128, mem[_2623], mem[_2623 + 196 len ceil32(mem[_2623])]
                        else:
                            require idx + 2 < mem[_115]
                            _2471 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2471)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2727 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2727 + 36] = 0
                            mem[_2727 + 68] = _2400
                            mem[_2727 + 100] = address(ext_call.return_data[0])
                            mem[_2727 + 132] = 128
                            mem[_2727 + 164] = mem[_2727]
                            s = 0
                            while s < mem[_2727]:
                                mem[_2727 + s + 196] = mem[_2727 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2727]) > mem[_2727]:
                                mem[_2727 + mem[_2727] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(ext_call.return_data[0]), 128, mem[_2727], mem[_2727 + 196 len ceil32(mem[_2727])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2624 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2624 + 36] = _2400
                            mem[_2624 + 68] = 0
                            mem[_2624 + 100] = this.address
                            mem[_2624 + 132] = 128
                            mem[_2624 + 164] = mem[_2624]
                            s = 0
                            while s < mem[_2624]:
                                mem[_2624 + s + 196] = mem[_2624 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2624]) > mem[_2624]:
                                mem[_2624 + mem[_2624] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(this.address), 128, mem[_2624], mem[_2624 + 196 len ceil32(mem[_2624])]
                        else:
                            require idx + 2 < mem[_115]
                            _2472 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2472)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2728 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2728 + 36] = _2400
                            mem[_2728 + 68] = 0
                            mem[_2728 + 100] = address(ext_call.return_data[0])
                            mem[_2728 + 132] = 128
                            mem[_2728 + 164] = mem[_2728]
                            s = 0
                            while s < mem[_2728]:
                                mem[_2728 + s + 196] = mem[_2728 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2728]) > mem[_2728]:
                                mem[_2728 + mem[_2728] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(ext_call.return_data[0]), 128, mem[_2728], mem[_2728 + 196 len ceil32(mem[_2728])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2264 = mem[_115]
                idx = idx + 1
                continue 
            _2295 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2296 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2296 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2299 = mem[_2296]
            mem[mem[64] len floor32(mem[_2296])] = mem[_2296 + 32 len floor32(mem[_2296])]
            mem[mem[64] + floor32(mem[_2296]) + -(mem[_2296] % 32) + 32 len mem[_2296] % 32] = mem[_2296 + floor32(mem[_2296]) + -(mem[_2296] % 32) + 64 len mem[_2296] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2299 + _2295 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3153] == mem[_3153]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3153]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3163] == mem[_3163]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3163]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2996] = return_data.size
                mem[_2996 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3155] == mem[_3155]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3155]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2996 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3164] == mem[_3164]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '4'
    require msg.sender == stor0
    require arg4.length >= 160
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] <= test266151307()
    require arg4 + cd[(arg4 + 164)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 >= 96
    mem[96] = cd[(arg4 + cd[(arg4 + 164)] + 36)]
    require cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 997 * 0, ext_call.return_data[4 len 28]
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 96
    _13 = mem[128]
    require mem[128] == mem[140 len 20]
    _14 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _15 = mem[mem[160] + 128]
    require mem[mem[160] + 128] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160 <= test266151307() and (32 * mem[mem[160] + 128]) + 160 >= 128
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128] = mem[mem[160] + 128]
    require _14 + (32 * _15) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _14 + 160
    t = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _113 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _114 = mem[mem[192] + 128]
    require mem[mem[192] + 128] <= test266151307()
    _115 = mem[64]
    require mem[64] + (32 * mem[mem[192] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[192] + 128]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_115] = mem[mem[192] + 128]
    require _113 + (32 * _114) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _113 + 160
    t = _115 + 32
    while idx < _114:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _114
    _839 = mem[_115 + 32]
    require 0 < _114
    require 1 < _114
    _843 = mem[_115 + 64]
    mem[mem[64] + 4] = mem[_115 + 44 len 20]
    mem[mem[64] + 36] = address(_843)
    require ext_code.size(address(_13))
    staticcall address(_13).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_843)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
    _849 = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
    _850 = mem[64]
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    mem[mem[64] + 68] = _849
    _851 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_851 + 32 len 4] = unknown_0xa9059cbb(?????)
    _854 = mem[_851]
    mem[mem[64] len floor32(mem[_851])] = mem[_851 + 32 len floor32(mem[_851])]
    mem[mem[64] + floor32(mem[_851]) + -(mem[_851] % 32) + 32 len mem[_851] % 32] = mem[_851 + floor32(mem[_851]) + -(mem[_851] % 32) + 64 len mem[_851] % 32]
    call address(_839) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _854 + _850 + -mem[64] + 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'ST'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'ST'
            _2262 = mem[_115]
            idx = 0
            while idx < _2262 - 1:
                require idx < mem[_115]
                _2271 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2288 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2391 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2613 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2613 + 36] = 0
                            mem[_2613 + 68] = _2391
                            mem[_2613 + 100] = this.address
                            mem[_2613 + 132] = 128
                            mem[_2613 + 164] = mem[_2613]
                            s = 0
                            while s < mem[_2613]:
                                mem[_2613 + s + 196] = mem[_2613 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2613]) > mem[_2613]:
                                mem[_2613 + mem[_2613] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(this.address), 128, mem[_2613], mem[_2613 + 196 len ceil32(mem[_2613])]
                        else:
                            require idx + 2 < mem[_115]
                            _2461 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2461)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2717 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2717 + 36] = 0
                            mem[_2717 + 68] = _2391
                            mem[_2717 + 100] = address(ext_call.return_data[0])
                            mem[_2717 + 132] = 128
                            mem[_2717 + 164] = mem[_2717]
                            s = 0
                            while s < mem[_2717]:
                                mem[_2717 + s + 196] = mem[_2717 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2717]) > mem[_2717]:
                                mem[_2717 + mem[_2717] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(ext_call.return_data[0]), 128, mem[_2717], mem[_2717 + 196 len ceil32(mem[_2717])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2614 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2614 + 36] = _2391
                            mem[_2614 + 68] = 0
                            mem[_2614 + 100] = this.address
                            mem[_2614 + 132] = 128
                            mem[_2614 + 164] = mem[_2614]
                            s = 0
                            while s < mem[_2614]:
                                mem[_2614 + s + 196] = mem[_2614 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2614]) > mem[_2614]:
                                mem[_2614 + mem[_2614] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(this.address), 128, mem[_2614], mem[_2614 + 196 len ceil32(mem[_2614])]
                        else:
                            require idx + 2 < mem[_115]
                            _2462 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2462)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2718 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2718 + 36] = _2391
                            mem[_2718 + 68] = 0
                            mem[_2718 + 100] = address(ext_call.return_data[0])
                            mem[_2718 + 132] = 128
                            mem[_2718 + 164] = mem[_2718]
                            s = 0
                            while s < mem[_2718]:
                                mem[_2718 + s + 196] = mem[_2718 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2718]) > mem[_2718]:
                                mem[_2718 + mem[_2718] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(ext_call.return_data[0]), 128, mem[_2718], mem[_2718 + 196 len ceil32(mem[_2718])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2392 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2615 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2615 + 36] = 0
                            mem[_2615 + 68] = _2392
                            mem[_2615 + 100] = this.address
                            mem[_2615 + 132] = 128
                            mem[_2615 + 164] = mem[_2615]
                            s = 0
                            while s < mem[_2615]:
                                mem[_2615 + s + 196] = mem[_2615 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2615]) > mem[_2615]:
                                mem[_2615 + mem[_2615] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(this.address), 128, mem[_2615], mem[_2615 + 196 len ceil32(mem[_2615])]
                        else:
                            require idx + 2 < mem[_115]
                            _2463 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2463)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2719 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2719 + 36] = 0
                            mem[_2719 + 68] = _2392
                            mem[_2719 + 100] = address(ext_call.return_data[0])
                            mem[_2719 + 132] = 128
                            mem[_2719 + 164] = mem[_2719]
                            s = 0
                            while s < mem[_2719]:
                                mem[_2719 + s + 196] = mem[_2719 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2719]) > mem[_2719]:
                                mem[_2719 + mem[_2719] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(ext_call.return_data[0]), 128, mem[_2719], mem[_2719 + 196 len ceil32(mem[_2719])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2616 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2616 + 36] = _2392
                            mem[_2616 + 68] = 0
                            mem[_2616 + 100] = this.address
                            mem[_2616 + 132] = 128
                            mem[_2616 + 164] = mem[_2616]
                            s = 0
                            while s < mem[_2616]:
                                mem[_2616 + s + 196] = mem[_2616 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2616]) > mem[_2616]:
                                mem[_2616 + mem[_2616] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(this.address), 128, mem[_2616], mem[_2616 + 196 len ceil32(mem[_2616])]
                        else:
                            require idx + 2 < mem[_115]
                            _2464 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2464)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2720 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2720 + 36] = _2392
                            mem[_2720 + 68] = 0
                            mem[_2720 + 100] = address(ext_call.return_data[0])
                            mem[_2720 + 132] = 128
                            mem[_2720 + 164] = mem[_2720]
                            s = 0
                            while s < mem[_2720]:
                                mem[_2720 + s + 196] = mem[_2720 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2720]) > mem[_2720]:
                                mem[_2720 + mem[_2720] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(ext_call.return_data[0]), 128, mem[_2720], mem[_2720 + 196 len ceil32(mem[_2720])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2262 = mem[_115]
                idx = idx + 1
                continue 
            _2283 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2284 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2284 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2287 = mem[_2284]
            mem[_2283 + 100 len floor32(mem[_2284])] = mem[_2284 + 32 len floor32(mem[_2284])]
            mem[_2283 + floor32(mem[_2284]) + -(mem[_2284] % 32) + 132 len mem[_2284] % 32] = mem[_2284 + -(mem[_2284] % 32) + floor32(mem[_2284]) + 64 len mem[_2284] % 32]
            call address(cd[(arg4 + 100)]).mem[_2283 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_2283 + 104 len _2287 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
            else:
                mem[_2283 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2283 + 132]:
                        revert with 0, 'ST'
            if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            _2261 = mem[_115]
            idx = 0
            while idx < _2261 - 1:
                require idx < mem[_115]
                _2269 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2282 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2387 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2609 + 36] = 0
                            mem[_2609 + 68] = _2387
                            mem[_2609 + 100] = this.address
                            mem[_2609 + 132] = 128
                            mem[_2609 + 164] = mem[_2609]
                            s = 0
                            while s < mem[_2609]:
                                mem[_2609 + s + 196] = mem[_2609 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2609]) > mem[_2609]:
                                mem[_2609 + mem[_2609] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(this.address), 128, mem[_2609], mem[_2609 + 196 len ceil32(mem[_2609])]
                        else:
                            require idx + 2 < mem[_115]
                            _2457 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2457)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2713 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2713 + 36] = 0
                            mem[_2713 + 68] = _2387
                            mem[_2713 + 100] = address(ext_call.return_data[0])
                            mem[_2713 + 132] = 128
                            mem[_2713 + 164] = mem[_2713]
                            s = 0
                            while s < mem[_2713]:
                                mem[_2713 + s + 196] = mem[_2713 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2713]) > mem[_2713]:
                                mem[_2713 + mem[_2713] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(ext_call.return_data[0]), 128, mem[_2713], mem[_2713 + 196 len ceil32(mem[_2713])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2610 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2610 + 36] = _2387
                            mem[_2610 + 68] = 0
                            mem[_2610 + 100] = this.address
                            mem[_2610 + 132] = 128
                            mem[_2610 + 164] = mem[_2610]
                            s = 0
                            while s < mem[_2610]:
                                mem[_2610 + s + 196] = mem[_2610 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2610]) > mem[_2610]:
                                mem[_2610 + mem[_2610] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(this.address), 128, mem[_2610], mem[_2610 + 196 len ceil32(mem[_2610])]
                        else:
                            require idx + 2 < mem[_115]
                            _2458 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2458)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2714 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2714 + 36] = _2387
                            mem[_2714 + 68] = 0
                            mem[_2714 + 100] = address(ext_call.return_data[0])
                            mem[_2714 + 132] = 128
                            mem[_2714 + 164] = mem[_2714]
                            s = 0
                            while s < mem[_2714]:
                                mem[_2714 + s + 196] = mem[_2714 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2714]) > mem[_2714]:
                                mem[_2714 + mem[_2714] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(ext_call.return_data[0]), 128, mem[_2714], mem[_2714 + 196 len ceil32(mem[_2714])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2388 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2611 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2611 + 36] = 0
                            mem[_2611 + 68] = _2388
                            mem[_2611 + 100] = this.address
                            mem[_2611 + 132] = 128
                            mem[_2611 + 164] = mem[_2611]
                            s = 0
                            while s < mem[_2611]:
                                mem[_2611 + s + 196] = mem[_2611 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2611]) > mem[_2611]:
                                mem[_2611 + mem[_2611] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(this.address), 128, mem[_2611], mem[_2611 + 196 len ceil32(mem[_2611])]
                        else:
                            require idx + 2 < mem[_115]
                            _2459 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2459)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2715 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2715 + 36] = 0
                            mem[_2715 + 68] = _2388
                            mem[_2715 + 100] = address(ext_call.return_data[0])
                            mem[_2715 + 132] = 128
                            mem[_2715 + 164] = mem[_2715]
                            s = 0
                            while s < mem[_2715]:
                                mem[_2715 + s + 196] = mem[_2715 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2715]) > mem[_2715]:
                                mem[_2715 + mem[_2715] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(ext_call.return_data[0]), 128, mem[_2715], mem[_2715 + 196 len ceil32(mem[_2715])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2612 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2612 + 36] = _2388
                            mem[_2612 + 68] = 0
                            mem[_2612 + 100] = this.address
                            mem[_2612 + 132] = 128
                            mem[_2612 + 164] = mem[_2612]
                            s = 0
                            while s < mem[_2612]:
                                mem[_2612 + s + 196] = mem[_2612 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2612]) > mem[_2612]:
                                mem[_2612 + mem[_2612] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(this.address), 128, mem[_2612], mem[_2612 + 196 len ceil32(mem[_2612])]
                        else:
                            require idx + 2 < mem[_115]
                            _2460 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2460)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2716 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2716 + 36] = _2388
                            mem[_2716 + 68] = 0
                            mem[_2716 + 100] = address(ext_call.return_data[0])
                            mem[_2716 + 132] = 128
                            mem[_2716 + 164] = mem[_2716]
                            s = 0
                            while s < mem[_2716]:
                                mem[_2716 + s + 196] = mem[_2716 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2716]) > mem[_2716]:
                                mem[_2716 + mem[_2716] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(ext_call.return_data[0]), 128, mem[_2716], mem[_2716 + 196 len ceil32(mem[_2716])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[_115]
                idx = idx + 1
                continue 
            _2277 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2278 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2278 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2281 = mem[_2278]
            mem[mem[64] len floor32(mem[_2278])] = mem[_2278 + 32 len floor32(mem[_2278])]
            mem[mem[64] + floor32(mem[_2278]) + -(mem[_2278] % 32) + 32 len mem[_2278] % 32] = mem[_2278 + floor32(mem[_2278]) + -(mem[_2278] % 32) + 64 len mem[_2278] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2281 + _2277 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3141] == mem[_3141]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3141]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3157] == mem[_3157]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3157]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2993 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2993] = return_data.size
                mem[_2993 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3143] == mem[_3143]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3143]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2993 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3158] == mem[_3158]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3158]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        _1562 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1562] = return_data.size
        mem[_1562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'ST'
        if not return_data.size:
            _2263 = mem[_115]
            idx = 0
            while idx < _2263 - 1:
                require idx < mem[_115]
                _2273 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2294 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2395 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2617 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2617 + 36] = 0
                            mem[_2617 + 68] = _2395
                            mem[_2617 + 100] = this.address
                            mem[_2617 + 132] = 128
                            mem[_2617 + 164] = mem[_2617]
                            s = 0
                            while s < mem[_2617]:
                                mem[_2617 + s + 196] = mem[_2617 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2617]) > mem[_2617]:
                                mem[_2617 + mem[_2617] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(this.address), 128, mem[_2617], mem[_2617 + 196 len ceil32(mem[_2617])]
                        else:
                            require idx + 2 < mem[_115]
                            _2465 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2465)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2721 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2721 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2721 + 36] = 0
                            mem[_2721 + 68] = _2395
                            mem[_2721 + 100] = address(ext_call.return_data[0])
                            mem[_2721 + 132] = 128
                            mem[_2721 + 164] = mem[_2721]
                            s = 0
                            while s < mem[_2721]:
                                mem[_2721 + s + 196] = mem[_2721 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2721]) > mem[_2721]:
                                mem[_2721 + mem[_2721] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(ext_call.return_data[0]), 128, mem[_2721], mem[_2721 + 196 len ceil32(mem[_2721])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2618 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2618 + 36] = _2395
                            mem[_2618 + 68] = 0
                            mem[_2618 + 100] = this.address
                            mem[_2618 + 132] = 128
                            mem[_2618 + 164] = mem[_2618]
                            s = 0
                            while s < mem[_2618]:
                                mem[_2618 + s + 196] = mem[_2618 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2618]) > mem[_2618]:
                                mem[_2618 + mem[_2618] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(this.address), 128, mem[_2618], mem[_2618 + 196 len ceil32(mem[_2618])]
                        else:
                            require idx + 2 < mem[_115]
                            _2466 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2466)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2722 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2722 + 36] = _2395
                            mem[_2722 + 68] = 0
                            mem[_2722 + 100] = address(ext_call.return_data[0])
                            mem[_2722 + 132] = 128
                            mem[_2722 + 164] = mem[_2722]
                            s = 0
                            while s < mem[_2722]:
                                mem[_2722 + s + 196] = mem[_2722 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2722]) > mem[_2722]:
                                mem[_2722 + mem[_2722] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(ext_call.return_data[0]), 128, mem[_2722], mem[_2722 + 196 len ceil32(mem[_2722])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2396 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2619 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2619 + 36] = 0
                            mem[_2619 + 68] = _2396
                            mem[_2619 + 100] = this.address
                            mem[_2619 + 132] = 128
                            mem[_2619 + 164] = mem[_2619]
                            s = 0
                            while s < mem[_2619]:
                                mem[_2619 + s + 196] = mem[_2619 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2619]) > mem[_2619]:
                                mem[_2619 + mem[_2619] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(this.address), 128, mem[_2619], mem[_2619 + 196 len ceil32(mem[_2619])]
                        else:
                            require idx + 2 < mem[_115]
                            _2467 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2467)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2723 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2723 + 36] = 0
                            mem[_2723 + 68] = _2396
                            mem[_2723 + 100] = address(ext_call.return_data[0])
                            mem[_2723 + 132] = 128
                            mem[_2723 + 164] = mem[_2723]
                            s = 0
                            while s < mem[_2723]:
                                mem[_2723 + s + 196] = mem[_2723 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2723]) > mem[_2723]:
                                mem[_2723 + mem[_2723] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(ext_call.return_data[0]), 128, mem[_2723], mem[_2723 + 196 len ceil32(mem[_2723])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2620 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2620 + 36] = _2396
                            mem[_2620 + 68] = 0
                            mem[_2620 + 100] = this.address
                            mem[_2620 + 132] = 128
                            mem[_2620 + 164] = mem[_2620]
                            s = 0
                            while s < mem[_2620]:
                                mem[_2620 + s + 196] = mem[_2620 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2620]) > mem[_2620]:
                                mem[_2620 + mem[_2620] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(this.address), 128, mem[_2620], mem[_2620 + 196 len ceil32(mem[_2620])]
                        else:
                            require idx + 2 < mem[_115]
                            _2468 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2468)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2724 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2724 + 36] = _2396
                            mem[_2724 + 68] = 0
                            mem[_2724 + 100] = address(ext_call.return_data[0])
                            mem[_2724 + 132] = 128
                            mem[_2724 + 164] = mem[_2724]
                            s = 0
                            while s < mem[_2724]:
                                mem[_2724 + s + 196] = mem[_2724 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2724]) > mem[_2724]:
                                mem[_2724 + mem[_2724] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(ext_call.return_data[0]), 128, mem[_2724], mem[_2724 + 196 len ceil32(mem[_2724])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2263 = mem[_115]
                idx = idx + 1
                continue 
            _2289 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2290 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2290 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2293 = mem[_2290]
            mem[mem[64] len floor32(mem[_2290])] = mem[_2290 + 32 len floor32(mem[_2290])]
            mem[mem[64] + floor32(mem[_2290]) + -(mem[_2290] % 32) + 32 len mem[_2290] % 32] = mem[_2290 + floor32(mem[_2290]) + -(mem[_2290] % 32) + 64 len mem[_2290] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2293 + _2289 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3149] == mem[_3149]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3149]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3161] == mem[_3161]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3161]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2995 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2995] = return_data.size
                mem[_2995 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3151] == mem[_3151]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3151]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2995 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3162] == mem[_3162]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3162]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if not mem[_1562 + 32]:
                revert with 0, 'ST'
            _2264 = mem[_115]
            idx = 0
            while idx < _2264 - 1:
                require idx < mem[_115]
                _2275 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2300 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2399 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2621 + 36] = 0
                            mem[_2621 + 68] = _2399
                            mem[_2621 + 100] = this.address
                            mem[_2621 + 132] = 128
                            mem[_2621 + 164] = mem[_2621]
                            s = 0
                            while s < mem[_2621]:
                                mem[_2621 + s + 196] = mem[_2621 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2621]) > mem[_2621]:
                                mem[_2621 + mem[_2621] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(this.address), 128, mem[_2621], mem[_2621 + 196 len ceil32(mem[_2621])]
                        else:
                            require idx + 2 < mem[_115]
                            _2469 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2469)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2725 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2725 + 36] = 0
                            mem[_2725 + 68] = _2399
                            mem[_2725 + 100] = address(ext_call.return_data[0])
                            mem[_2725 + 132] = 128
                            mem[_2725 + 164] = mem[_2725]
                            s = 0
                            while s < mem[_2725]:
                                mem[_2725 + s + 196] = mem[_2725 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2725]) > mem[_2725]:
                                mem[_2725 + mem[_2725] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(ext_call.return_data[0]), 128, mem[_2725], mem[_2725 + 196 len ceil32(mem[_2725])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2622 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 36] = _2399
                            mem[_2622 + 68] = 0
                            mem[_2622 + 100] = this.address
                            mem[_2622 + 132] = 128
                            mem[_2622 + 164] = mem[_2622]
                            s = 0
                            while s < mem[_2622]:
                                mem[_2622 + s + 196] = mem[_2622 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2622]) > mem[_2622]:
                                mem[_2622 + mem[_2622] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(this.address), 128, mem[_2622], mem[_2622 + 196 len ceil32(mem[_2622])]
                        else:
                            require idx + 2 < mem[_115]
                            _2470 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2470)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2726 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2726 + 36] = _2399
                            mem[_2726 + 68] = 0
                            mem[_2726 + 100] = address(ext_call.return_data[0])
                            mem[_2726 + 132] = 128
                            mem[_2726 + 164] = mem[_2726]
                            s = 0
                            while s < mem[_2726]:
                                mem[_2726 + s + 196] = mem[_2726 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2726]) > mem[_2726]:
                                mem[_2726 + mem[_2726] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(ext_call.return_data[0]), 128, mem[_2726], mem[_2726 + 196 len ceil32(mem[_2726])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2400 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2623 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2623 + 36] = 0
                            mem[_2623 + 68] = _2400
                            mem[_2623 + 100] = this.address
                            mem[_2623 + 132] = 128
                            mem[_2623 + 164] = mem[_2623]
                            s = 0
                            while s < mem[_2623]:
                                mem[_2623 + s + 196] = mem[_2623 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2623]) > mem[_2623]:
                                mem[_2623 + mem[_2623] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(this.address), 128, mem[_2623], mem[_2623 + 196 len ceil32(mem[_2623])]
                        else:
                            require idx + 2 < mem[_115]
                            _2471 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2471)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2727 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2727 + 36] = 0
                            mem[_2727 + 68] = _2400
                            mem[_2727 + 100] = address(ext_call.return_data[0])
                            mem[_2727 + 132] = 128
                            mem[_2727 + 164] = mem[_2727]
                            s = 0
                            while s < mem[_2727]:
                                mem[_2727 + s + 196] = mem[_2727 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2727]) > mem[_2727]:
                                mem[_2727 + mem[_2727] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(ext_call.return_data[0]), 128, mem[_2727], mem[_2727 + 196 len ceil32(mem[_2727])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2624 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2624 + 36] = _2400
                            mem[_2624 + 68] = 0
                            mem[_2624 + 100] = this.address
                            mem[_2624 + 132] = 128
                            mem[_2624 + 164] = mem[_2624]
                            s = 0
                            while s < mem[_2624]:
                                mem[_2624 + s + 196] = mem[_2624 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2624]) > mem[_2624]:
                                mem[_2624 + mem[_2624] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(this.address), 128, mem[_2624], mem[_2624 + 196 len ceil32(mem[_2624])]
                        else:
                            require idx + 2 < mem[_115]
                            _2472 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2472)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2728 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2728 + 36] = _2400
                            mem[_2728 + 68] = 0
                            mem[_2728 + 100] = address(ext_call.return_data[0])
                            mem[_2728 + 132] = 128
                            mem[_2728 + 164] = mem[_2728]
                            s = 0
                            while s < mem[_2728]:
                                mem[_2728 + s + 196] = mem[_2728 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2728]) > mem[_2728]:
                                mem[_2728 + mem[_2728] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(ext_call.return_data[0]), 128, mem[_2728], mem[_2728 + 196 len ceil32(mem[_2728])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2264 = mem[_115]
                idx = idx + 1
                continue 
            _2295 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2296 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2296 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2299 = mem[_2296]
            mem[mem[64] len floor32(mem[_2296])] = mem[_2296 + 32 len floor32(mem[_2296])]
            mem[mem[64] + floor32(mem[_2296]) + -(mem[_2296] % 32) + 32 len mem[_2296] % 32] = mem[_2296 + floor32(mem[_2296]) + -(mem[_2296] % 32) + 64 len mem[_2296] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2299 + _2295 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3153] == mem[_3153]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3153]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3163] == mem[_3163]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3163]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2996] = return_data.size
                mem[_2996 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3155] == mem[_3155]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3155]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2996 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3164] == mem[_3164]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '4'
    require msg.sender == stor0
    require arg4.length >= 160
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] <= test266151307()
    require arg4 + cd[(arg4 + 164)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 >= 96
    mem[96] = cd[(arg4 + cd[(arg4 + 164)] + 36)]
    require cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 997 * 0, ext_call.return_data[4 len 28]
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 96
    _13 = mem[128]
    require mem[128] == mem[140 len 20]
    _14 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _15 = mem[mem[160] + 128]
    require mem[mem[160] + 128] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160 <= test266151307() and (32 * mem[mem[160] + 128]) + 160 >= 128
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128] = mem[mem[160] + 128]
    require _14 + (32 * _15) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _14 + 160
    t = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _113 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _114 = mem[mem[192] + 128]
    require mem[mem[192] + 128] <= test266151307()
    _115 = mem[64]
    require mem[64] + (32 * mem[mem[192] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[192] + 128]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_115] = mem[mem[192] + 128]
    require _113 + (32 * _114) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _113 + 160
    t = _115 + 32
    while idx < _114:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _114
    _839 = mem[_115 + 32]
    require 0 < _114
    require 1 < _114
    _843 = mem[_115 + 64]
    mem[mem[64] + 4] = mem[_115 + 44 len 20]
    mem[mem[64] + 36] = address(_843)
    require ext_code.size(address(_13))
    staticcall address(_13).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_843)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
    _849 = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
    _850 = mem[64]
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    mem[mem[64] + 68] = _849
    _851 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_851 + 32 len 4] = unknown_0xa9059cbb(?????)
    _854 = mem[_851]
    mem[mem[64] len floor32(mem[_851])] = mem[_851 + 32 len floor32(mem[_851])]
    mem[mem[64] + floor32(mem[_851]) + -(mem[_851] % 32) + 32 len mem[_851] % 32] = mem[_851 + floor32(mem[_851]) + -(mem[_851] % 32) + 64 len mem[_851] % 32]
    call address(_839) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _854 + _850 + -mem[64] + 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'ST'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'ST'
            _2262 = mem[_115]
            idx = 0
            while idx < _2262 - 1:
                require idx < mem[_115]
                _2271 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2288 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2391 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2613 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2613 + 36] = 0
                            mem[_2613 + 68] = _2391
                            mem[_2613 + 100] = this.address
                            mem[_2613 + 132] = 128
                            mem[_2613 + 164] = mem[_2613]
                            s = 0
                            while s < mem[_2613]:
                                mem[_2613 + s + 196] = mem[_2613 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2613]) > mem[_2613]:
                                mem[_2613 + mem[_2613] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(this.address), 128, mem[_2613], mem[_2613 + 196 len ceil32(mem[_2613])]
                        else:
                            require idx + 2 < mem[_115]
                            _2461 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2461)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2717 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2717 + 36] = 0
                            mem[_2717 + 68] = _2391
                            mem[_2717 + 100] = address(ext_call.return_data[0])
                            mem[_2717 + 132] = 128
                            mem[_2717 + 164] = mem[_2717]
                            s = 0
                            while s < mem[_2717]:
                                mem[_2717 + s + 196] = mem[_2717 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2717]) > mem[_2717]:
                                mem[_2717 + mem[_2717] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(ext_call.return_data[0]), 128, mem[_2717], mem[_2717 + 196 len ceil32(mem[_2717])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2614 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2614 + 36] = _2391
                            mem[_2614 + 68] = 0
                            mem[_2614 + 100] = this.address
                            mem[_2614 + 132] = 128
                            mem[_2614 + 164] = mem[_2614]
                            s = 0
                            while s < mem[_2614]:
                                mem[_2614 + s + 196] = mem[_2614 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2614]) > mem[_2614]:
                                mem[_2614 + mem[_2614] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(this.address), 128, mem[_2614], mem[_2614 + 196 len ceil32(mem[_2614])]
                        else:
                            require idx + 2 < mem[_115]
                            _2462 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2462)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2718 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2718 + 36] = _2391
                            mem[_2718 + 68] = 0
                            mem[_2718 + 100] = address(ext_call.return_data[0])
                            mem[_2718 + 132] = 128
                            mem[_2718 + 164] = mem[_2718]
                            s = 0
                            while s < mem[_2718]:
                                mem[_2718 + s + 196] = mem[_2718 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2718]) > mem[_2718]:
                                mem[_2718 + mem[_2718] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(ext_call.return_data[0]), 128, mem[_2718], mem[_2718 + 196 len ceil32(mem[_2718])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2392 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2615 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2615 + 36] = 0
                            mem[_2615 + 68] = _2392
                            mem[_2615 + 100] = this.address
                            mem[_2615 + 132] = 128
                            mem[_2615 + 164] = mem[_2615]
                            s = 0
                            while s < mem[_2615]:
                                mem[_2615 + s + 196] = mem[_2615 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2615]) > mem[_2615]:
                                mem[_2615 + mem[_2615] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(this.address), 128, mem[_2615], mem[_2615 + 196 len ceil32(mem[_2615])]
                        else:
                            require idx + 2 < mem[_115]
                            _2463 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2463)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2719 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2719 + 36] = 0
                            mem[_2719 + 68] = _2392
                            mem[_2719 + 100] = address(ext_call.return_data[0])
                            mem[_2719 + 132] = 128
                            mem[_2719 + 164] = mem[_2719]
                            s = 0
                            while s < mem[_2719]:
                                mem[_2719 + s + 196] = mem[_2719 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2719]) > mem[_2719]:
                                mem[_2719 + mem[_2719] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(ext_call.return_data[0]), 128, mem[_2719], mem[_2719 + 196 len ceil32(mem[_2719])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2616 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2616 + 36] = _2392
                            mem[_2616 + 68] = 0
                            mem[_2616 + 100] = this.address
                            mem[_2616 + 132] = 128
                            mem[_2616 + 164] = mem[_2616]
                            s = 0
                            while s < mem[_2616]:
                                mem[_2616 + s + 196] = mem[_2616 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2616]) > mem[_2616]:
                                mem[_2616 + mem[_2616] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(this.address), 128, mem[_2616], mem[_2616 + 196 len ceil32(mem[_2616])]
                        else:
                            require idx + 2 < mem[_115]
                            _2464 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2464)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2720 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2720 + 36] = _2392
                            mem[_2720 + 68] = 0
                            mem[_2720 + 100] = address(ext_call.return_data[0])
                            mem[_2720 + 132] = 128
                            mem[_2720 + 164] = mem[_2720]
                            s = 0
                            while s < mem[_2720]:
                                mem[_2720 + s + 196] = mem[_2720 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2720]) > mem[_2720]:
                                mem[_2720 + mem[_2720] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(ext_call.return_data[0]), 128, mem[_2720], mem[_2720 + 196 len ceil32(mem[_2720])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2262 = mem[_115]
                idx = idx + 1
                continue 
            _2283 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2284 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2284 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2287 = mem[_2284]
            mem[_2283 + 100 len floor32(mem[_2284])] = mem[_2284 + 32 len floor32(mem[_2284])]
            mem[_2283 + floor32(mem[_2284]) + -(mem[_2284] % 32) + 132 len mem[_2284] % 32] = mem[_2284 + -(mem[_2284] % 32) + floor32(mem[_2284]) + 64 len mem[_2284] % 32]
            call address(cd[(arg4 + 100)]).mem[_2283 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_2283 + 104 len _2287 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
            else:
                mem[_2283 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2283 + 132]:
                        revert with 0, 'ST'
            if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            _2261 = mem[_115]
            idx = 0
            while idx < _2261 - 1:
                require idx < mem[_115]
                _2269 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2282 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2387 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2609 + 36] = 0
                            mem[_2609 + 68] = _2387
                            mem[_2609 + 100] = this.address
                            mem[_2609 + 132] = 128
                            mem[_2609 + 164] = mem[_2609]
                            s = 0
                            while s < mem[_2609]:
                                mem[_2609 + s + 196] = mem[_2609 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2609]) > mem[_2609]:
                                mem[_2609 + mem[_2609] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(this.address), 128, mem[_2609], mem[_2609 + 196 len ceil32(mem[_2609])]
                        else:
                            require idx + 2 < mem[_115]
                            _2457 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2457)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2713 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2713 + 36] = 0
                            mem[_2713 + 68] = _2387
                            mem[_2713 + 100] = address(ext_call.return_data[0])
                            mem[_2713 + 132] = 128
                            mem[_2713 + 164] = mem[_2713]
                            s = 0
                            while s < mem[_2713]:
                                mem[_2713 + s + 196] = mem[_2713 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2713]) > mem[_2713]:
                                mem[_2713 + mem[_2713] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(ext_call.return_data[0]), 128, mem[_2713], mem[_2713 + 196 len ceil32(mem[_2713])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2610 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2610 + 36] = _2387
                            mem[_2610 + 68] = 0
                            mem[_2610 + 100] = this.address
                            mem[_2610 + 132] = 128
                            mem[_2610 + 164] = mem[_2610]
                            s = 0
                            while s < mem[_2610]:
                                mem[_2610 + s + 196] = mem[_2610 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2610]) > mem[_2610]:
                                mem[_2610 + mem[_2610] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(this.address), 128, mem[_2610], mem[_2610 + 196 len ceil32(mem[_2610])]
                        else:
                            require idx + 2 < mem[_115]
                            _2458 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2458)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2714 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2714 + 36] = _2387
                            mem[_2714 + 68] = 0
                            mem[_2714 + 100] = address(ext_call.return_data[0])
                            mem[_2714 + 132] = 128
                            mem[_2714 + 164] = mem[_2714]
                            s = 0
                            while s < mem[_2714]:
                                mem[_2714 + s + 196] = mem[_2714 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2714]) > mem[_2714]:
                                mem[_2714 + mem[_2714] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(ext_call.return_data[0]), 128, mem[_2714], mem[_2714 + 196 len ceil32(mem[_2714])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2388 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2611 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2611 + 36] = 0
                            mem[_2611 + 68] = _2388
                            mem[_2611 + 100] = this.address
                            mem[_2611 + 132] = 128
                            mem[_2611 + 164] = mem[_2611]
                            s = 0
                            while s < mem[_2611]:
                                mem[_2611 + s + 196] = mem[_2611 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2611]) > mem[_2611]:
                                mem[_2611 + mem[_2611] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(this.address), 128, mem[_2611], mem[_2611 + 196 len ceil32(mem[_2611])]
                        else:
                            require idx + 2 < mem[_115]
                            _2459 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2459)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2715 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2715 + 36] = 0
                            mem[_2715 + 68] = _2388
                            mem[_2715 + 100] = address(ext_call.return_data[0])
                            mem[_2715 + 132] = 128
                            mem[_2715 + 164] = mem[_2715]
                            s = 0
                            while s < mem[_2715]:
                                mem[_2715 + s + 196] = mem[_2715 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2715]) > mem[_2715]:
                                mem[_2715 + mem[_2715] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(ext_call.return_data[0]), 128, mem[_2715], mem[_2715 + 196 len ceil32(mem[_2715])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2612 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2612 + 36] = _2388
                            mem[_2612 + 68] = 0
                            mem[_2612 + 100] = this.address
                            mem[_2612 + 132] = 128
                            mem[_2612 + 164] = mem[_2612]
                            s = 0
                            while s < mem[_2612]:
                                mem[_2612 + s + 196] = mem[_2612 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2612]) > mem[_2612]:
                                mem[_2612 + mem[_2612] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(this.address), 128, mem[_2612], mem[_2612 + 196 len ceil32(mem[_2612])]
                        else:
                            require idx + 2 < mem[_115]
                            _2460 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2460)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2716 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2716 + 36] = _2388
                            mem[_2716 + 68] = 0
                            mem[_2716 + 100] = address(ext_call.return_data[0])
                            mem[_2716 + 132] = 128
                            mem[_2716 + 164] = mem[_2716]
                            s = 0
                            while s < mem[_2716]:
                                mem[_2716 + s + 196] = mem[_2716 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2716]) > mem[_2716]:
                                mem[_2716 + mem[_2716] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(ext_call.return_data[0]), 128, mem[_2716], mem[_2716 + 196 len ceil32(mem[_2716])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[_115]
                idx = idx + 1
                continue 
            _2277 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2278 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2278 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2281 = mem[_2278]
            mem[mem[64] len floor32(mem[_2278])] = mem[_2278 + 32 len floor32(mem[_2278])]
            mem[mem[64] + floor32(mem[_2278]) + -(mem[_2278] % 32) + 32 len mem[_2278] % 32] = mem[_2278 + floor32(mem[_2278]) + -(mem[_2278] % 32) + 64 len mem[_2278] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2281 + _2277 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3141] == mem[_3141]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3141]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3157] == mem[_3157]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3157]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2993 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2993] = return_data.size
                mem[_2993 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3143] == mem[_3143]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3143]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2993 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3158] == mem[_3158]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3158]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        _1562 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1562] = return_data.size
        mem[_1562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'ST'
        if not return_data.size:
            _2263 = mem[_115]
            idx = 0
            while idx < _2263 - 1:
                require idx < mem[_115]
                _2273 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2294 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2395 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2617 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2617 + 36] = 0
                            mem[_2617 + 68] = _2395
                            mem[_2617 + 100] = this.address
                            mem[_2617 + 132] = 128
                            mem[_2617 + 164] = mem[_2617]
                            s = 0
                            while s < mem[_2617]:
                                mem[_2617 + s + 196] = mem[_2617 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2617]) > mem[_2617]:
                                mem[_2617 + mem[_2617] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(this.address), 128, mem[_2617], mem[_2617 + 196 len ceil32(mem[_2617])]
                        else:
                            require idx + 2 < mem[_115]
                            _2465 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2465)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2721 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2721 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2721 + 36] = 0
                            mem[_2721 + 68] = _2395
                            mem[_2721 + 100] = address(ext_call.return_data[0])
                            mem[_2721 + 132] = 128
                            mem[_2721 + 164] = mem[_2721]
                            s = 0
                            while s < mem[_2721]:
                                mem[_2721 + s + 196] = mem[_2721 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2721]) > mem[_2721]:
                                mem[_2721 + mem[_2721] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(ext_call.return_data[0]), 128, mem[_2721], mem[_2721 + 196 len ceil32(mem[_2721])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2618 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2618 + 36] = _2395
                            mem[_2618 + 68] = 0
                            mem[_2618 + 100] = this.address
                            mem[_2618 + 132] = 128
                            mem[_2618 + 164] = mem[_2618]
                            s = 0
                            while s < mem[_2618]:
                                mem[_2618 + s + 196] = mem[_2618 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2618]) > mem[_2618]:
                                mem[_2618 + mem[_2618] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(this.address), 128, mem[_2618], mem[_2618 + 196 len ceil32(mem[_2618])]
                        else:
                            require idx + 2 < mem[_115]
                            _2466 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2466)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2722 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2722 + 36] = _2395
                            mem[_2722 + 68] = 0
                            mem[_2722 + 100] = address(ext_call.return_data[0])
                            mem[_2722 + 132] = 128
                            mem[_2722 + 164] = mem[_2722]
                            s = 0
                            while s < mem[_2722]:
                                mem[_2722 + s + 196] = mem[_2722 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2722]) > mem[_2722]:
                                mem[_2722 + mem[_2722] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(ext_call.return_data[0]), 128, mem[_2722], mem[_2722 + 196 len ceil32(mem[_2722])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2396 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2619 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2619 + 36] = 0
                            mem[_2619 + 68] = _2396
                            mem[_2619 + 100] = this.address
                            mem[_2619 + 132] = 128
                            mem[_2619 + 164] = mem[_2619]
                            s = 0
                            while s < mem[_2619]:
                                mem[_2619 + s + 196] = mem[_2619 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2619]) > mem[_2619]:
                                mem[_2619 + mem[_2619] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(this.address), 128, mem[_2619], mem[_2619 + 196 len ceil32(mem[_2619])]
                        else:
                            require idx + 2 < mem[_115]
                            _2467 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2467)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2723 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2723 + 36] = 0
                            mem[_2723 + 68] = _2396
                            mem[_2723 + 100] = address(ext_call.return_data[0])
                            mem[_2723 + 132] = 128
                            mem[_2723 + 164] = mem[_2723]
                            s = 0
                            while s < mem[_2723]:
                                mem[_2723 + s + 196] = mem[_2723 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2723]) > mem[_2723]:
                                mem[_2723 + mem[_2723] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(ext_call.return_data[0]), 128, mem[_2723], mem[_2723 + 196 len ceil32(mem[_2723])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2620 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2620 + 36] = _2396
                            mem[_2620 + 68] = 0
                            mem[_2620 + 100] = this.address
                            mem[_2620 + 132] = 128
                            mem[_2620 + 164] = mem[_2620]
                            s = 0
                            while s < mem[_2620]:
                                mem[_2620 + s + 196] = mem[_2620 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2620]) > mem[_2620]:
                                mem[_2620 + mem[_2620] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(this.address), 128, mem[_2620], mem[_2620 + 196 len ceil32(mem[_2620])]
                        else:
                            require idx + 2 < mem[_115]
                            _2468 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2468)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2724 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2724 + 36] = _2396
                            mem[_2724 + 68] = 0
                            mem[_2724 + 100] = address(ext_call.return_data[0])
                            mem[_2724 + 132] = 128
                            mem[_2724 + 164] = mem[_2724]
                            s = 0
                            while s < mem[_2724]:
                                mem[_2724 + s + 196] = mem[_2724 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2724]) > mem[_2724]:
                                mem[_2724 + mem[_2724] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(ext_call.return_data[0]), 128, mem[_2724], mem[_2724 + 196 len ceil32(mem[_2724])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2263 = mem[_115]
                idx = idx + 1
                continue 
            _2289 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2290 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2290 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2293 = mem[_2290]
            mem[mem[64] len floor32(mem[_2290])] = mem[_2290 + 32 len floor32(mem[_2290])]
            mem[mem[64] + floor32(mem[_2290]) + -(mem[_2290] % 32) + 32 len mem[_2290] % 32] = mem[_2290 + floor32(mem[_2290]) + -(mem[_2290] % 32) + 64 len mem[_2290] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2293 + _2289 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3149] == mem[_3149]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3149]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3161] == mem[_3161]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3161]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2995 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2995] = return_data.size
                mem[_2995 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3151] == mem[_3151]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3151]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2995 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3162] == mem[_3162]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3162]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if not mem[_1562 + 32]:
                revert with 0, 'ST'
            _2264 = mem[_115]
            idx = 0
            while idx < _2264 - 1:
                require idx < mem[_115]
                _2275 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2300 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2399 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2621 + 36] = 0
                            mem[_2621 + 68] = _2399
                            mem[_2621 + 100] = this.address
                            mem[_2621 + 132] = 128
                            mem[_2621 + 164] = mem[_2621]
                            s = 0
                            while s < mem[_2621]:
                                mem[_2621 + s + 196] = mem[_2621 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2621]) > mem[_2621]:
                                mem[_2621 + mem[_2621] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(this.address), 128, mem[_2621], mem[_2621 + 196 len ceil32(mem[_2621])]
                        else:
                            require idx + 2 < mem[_115]
                            _2469 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2469)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2725 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2725 + 36] = 0
                            mem[_2725 + 68] = _2399
                            mem[_2725 + 100] = address(ext_call.return_data[0])
                            mem[_2725 + 132] = 128
                            mem[_2725 + 164] = mem[_2725]
                            s = 0
                            while s < mem[_2725]:
                                mem[_2725 + s + 196] = mem[_2725 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2725]) > mem[_2725]:
                                mem[_2725 + mem[_2725] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(ext_call.return_data[0]), 128, mem[_2725], mem[_2725 + 196 len ceil32(mem[_2725])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2622 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 36] = _2399
                            mem[_2622 + 68] = 0
                            mem[_2622 + 100] = this.address
                            mem[_2622 + 132] = 128
                            mem[_2622 + 164] = mem[_2622]
                            s = 0
                            while s < mem[_2622]:
                                mem[_2622 + s + 196] = mem[_2622 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2622]) > mem[_2622]:
                                mem[_2622 + mem[_2622] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(this.address), 128, mem[_2622], mem[_2622 + 196 len ceil32(mem[_2622])]
                        else:
                            require idx + 2 < mem[_115]
                            _2470 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2470)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2726 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2726 + 36] = _2399
                            mem[_2726 + 68] = 0
                            mem[_2726 + 100] = address(ext_call.return_data[0])
                            mem[_2726 + 132] = 128
                            mem[_2726 + 164] = mem[_2726]
                            s = 0
                            while s < mem[_2726]:
                                mem[_2726 + s + 196] = mem[_2726 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2726]) > mem[_2726]:
                                mem[_2726 + mem[_2726] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(ext_call.return_data[0]), 128, mem[_2726], mem[_2726 + 196 len ceil32(mem[_2726])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2400 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2623 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2623 + 36] = 0
                            mem[_2623 + 68] = _2400
                            mem[_2623 + 100] = this.address
                            mem[_2623 + 132] = 128
                            mem[_2623 + 164] = mem[_2623]
                            s = 0
                            while s < mem[_2623]:
                                mem[_2623 + s + 196] = mem[_2623 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2623]) > mem[_2623]:
                                mem[_2623 + mem[_2623] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(this.address), 128, mem[_2623], mem[_2623 + 196 len ceil32(mem[_2623])]
                        else:
                            require idx + 2 < mem[_115]
                            _2471 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2471)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2727 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2727 + 36] = 0
                            mem[_2727 + 68] = _2400
                            mem[_2727 + 100] = address(ext_call.return_data[0])
                            mem[_2727 + 132] = 128
                            mem[_2727 + 164] = mem[_2727]
                            s = 0
                            while s < mem[_2727]:
                                mem[_2727 + s + 196] = mem[_2727 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2727]) > mem[_2727]:
                                mem[_2727 + mem[_2727] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(ext_call.return_data[0]), 128, mem[_2727], mem[_2727 + 196 len ceil32(mem[_2727])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2624 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2624 + 36] = _2400
                            mem[_2624 + 68] = 0
                            mem[_2624 + 100] = this.address
                            mem[_2624 + 132] = 128
                            mem[_2624 + 164] = mem[_2624]
                            s = 0
                            while s < mem[_2624]:
                                mem[_2624 + s + 196] = mem[_2624 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2624]) > mem[_2624]:
                                mem[_2624 + mem[_2624] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(this.address), 128, mem[_2624], mem[_2624 + 196 len ceil32(mem[_2624])]
                        else:
                            require idx + 2 < mem[_115]
                            _2472 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2472)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2728 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2728 + 36] = _2400
                            mem[_2728 + 68] = 0
                            mem[_2728 + 100] = address(ext_call.return_data[0])
                            mem[_2728 + 132] = 128
                            mem[_2728 + 164] = mem[_2728]
                            s = 0
                            while s < mem[_2728]:
                                mem[_2728 + s + 196] = mem[_2728 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2728]) > mem[_2728]:
                                mem[_2728 + mem[_2728] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(ext_call.return_data[0]), 128, mem[_2728], mem[_2728 + 196 len ceil32(mem[_2728])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2264 = mem[_115]
                idx = idx + 1
                continue 
            _2295 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2296 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2296 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2299 = mem[_2296]
            mem[mem[64] len floor32(mem[_2296])] = mem[_2296 + 32 len floor32(mem[_2296])]
            mem[mem[64] + floor32(mem[_2296]) + -(mem[_2296] % 32) + 32 len mem[_2296] % 32] = mem[_2296 + floor32(mem[_2296]) + -(mem[_2296] % 32) + 64 len mem[_2296] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2299 + _2295 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3153] == mem[_3153]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3153]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3163] == mem[_3163]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3163]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2996] = return_data.size
                mem[_2996 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3155] == mem[_3155]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3155]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2996 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3164] == mem[_3164]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '4'
    require msg.sender == stor0
    require arg4.length >= 160
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] <= test266151307()
    require arg4 + cd[(arg4 + 164)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 >= 96
    mem[96] = cd[(arg4 + cd[(arg4 + 164)] + 36)]
    require cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 997 * 0, ext_call.return_data[4 len 28]
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 96
    _13 = mem[128]
    require mem[128] == mem[140 len 20]
    _14 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _15 = mem[mem[160] + 128]
    require mem[mem[160] + 128] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160 <= test266151307() and (32 * mem[mem[160] + 128]) + 160 >= 128
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[mem[160] + 128]) + 160
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128] = mem[mem[160] + 128]
    require _14 + (32 * _15) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _14 + 160
    t = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _113 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128
    _114 = mem[mem[192] + 128]
    require mem[mem[192] + 128] <= test266151307()
    _115 = mem[64]
    require mem[64] + (32 * mem[mem[192] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[192] + 128]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_115] = mem[mem[192] + 128]
    require _113 + (32 * _114) + 64 <= cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32
    idx = 0
    s = _113 + 160
    t = _115 + 32
    while idx < _114:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _114
    _839 = mem[_115 + 32]
    require 0 < _114
    require 1 < _114
    _843 = mem[_115 + 64]
    mem[mem[64] + 4] = mem[_115 + 44 len 20]
    mem[mem[64] + 36] = address(_843)
    require ext_code.size(address(_13))
    staticcall address(_13).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_843)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
    _849 = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
    _850 = mem[64]
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    mem[mem[64] + 68] = _849
    _851 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_851 + 32 len 4] = unknown_0xa9059cbb(?????)
    _854 = mem[_851]
    mem[mem[64] len floor32(mem[_851])] = mem[_851 + 32 len floor32(mem[_851])]
    mem[mem[64] + floor32(mem[_851]) + -(mem[_851] % 32) + 32 len mem[_851] % 32] = mem[_851 + floor32(mem[_851]) + -(mem[_851] % 32) + 64 len mem[_851] % 32]
    call address(_839) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _854 + _850 + -mem[64] + 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'ST'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'ST'
            _2262 = mem[_115]
            idx = 0
            while idx < _2262 - 1:
                require idx < mem[_115]
                _2271 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2288 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2391 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2613 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2613 + 36] = 0
                            mem[_2613 + 68] = _2391
                            mem[_2613 + 100] = this.address
                            mem[_2613 + 132] = 128
                            mem[_2613 + 164] = mem[_2613]
                            s = 0
                            while s < mem[_2613]:
                                mem[_2613 + s + 196] = mem[_2613 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2613]) > mem[_2613]:
                                mem[_2613 + mem[_2613] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(this.address), 128, mem[_2613], mem[_2613 + 196 len ceil32(mem[_2613])]
                        else:
                            require idx + 2 < mem[_115]
                            _2461 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2461)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2717 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2717 + 36] = 0
                            mem[_2717 + 68] = _2391
                            mem[_2717 + 100] = address(ext_call.return_data[0])
                            mem[_2717 + 132] = 128
                            mem[_2717 + 164] = mem[_2717]
                            s = 0
                            while s < mem[_2717]:
                                mem[_2717 + s + 196] = mem[_2717 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2717]) > mem[_2717]:
                                mem[_2717 + mem[_2717] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2391, address(ext_call.return_data[0]), 128, mem[_2717], mem[_2717 + 196 len ceil32(mem[_2717])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2614 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2614 + 36] = _2391
                            mem[_2614 + 68] = 0
                            mem[_2614 + 100] = this.address
                            mem[_2614 + 132] = 128
                            mem[_2614 + 164] = mem[_2614]
                            s = 0
                            while s < mem[_2614]:
                                mem[_2614 + s + 196] = mem[_2614 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2614]) > mem[_2614]:
                                mem[_2614 + mem[_2614] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(this.address), 128, mem[_2614], mem[_2614 + 196 len ceil32(mem[_2614])]
                        else:
                            require idx + 2 < mem[_115]
                            _2462 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2462)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2718 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2718 + 36] = _2391
                            mem[_2718 + 68] = 0
                            mem[_2718 + 100] = address(ext_call.return_data[0])
                            mem[_2718 + 132] = 128
                            mem[_2718 + 164] = mem[_2718]
                            s = 0
                            while s < mem[_2718]:
                                mem[_2718 + s + 196] = mem[_2718 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2718]) > mem[_2718]:
                                mem[_2718 + mem[_2718] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2391, 0, address(ext_call.return_data[0]), 128, mem[_2718], mem[_2718 + 196 len ceil32(mem[_2718])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2392 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2615 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2615 + 36] = 0
                            mem[_2615 + 68] = _2392
                            mem[_2615 + 100] = this.address
                            mem[_2615 + 132] = 128
                            mem[_2615 + 164] = mem[_2615]
                            s = 0
                            while s < mem[_2615]:
                                mem[_2615 + s + 196] = mem[_2615 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2615]) > mem[_2615]:
                                mem[_2615 + mem[_2615] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(this.address), 128, mem[_2615], mem[_2615 + 196 len ceil32(mem[_2615])]
                        else:
                            require idx + 2 < mem[_115]
                            _2463 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2463)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2719 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2719 + 36] = 0
                            mem[_2719 + 68] = _2392
                            mem[_2719 + 100] = address(ext_call.return_data[0])
                            mem[_2719 + 132] = 128
                            mem[_2719 + 164] = mem[_2719]
                            s = 0
                            while s < mem[_2719]:
                                mem[_2719 + s + 196] = mem[_2719 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2719]) > mem[_2719]:
                                mem[_2719 + mem[_2719] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2392, address(ext_call.return_data[0]), 128, mem[_2719], mem[_2719 + 196 len ceil32(mem[_2719])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2616 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2616 + 36] = _2392
                            mem[_2616 + 68] = 0
                            mem[_2616 + 100] = this.address
                            mem[_2616 + 132] = 128
                            mem[_2616 + 164] = mem[_2616]
                            s = 0
                            while s < mem[_2616]:
                                mem[_2616 + s + 196] = mem[_2616 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2616]) > mem[_2616]:
                                mem[_2616 + mem[_2616] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(this.address), 128, mem[_2616], mem[_2616 + 196 len ceil32(mem[_2616])]
                        else:
                            require idx + 2 < mem[_115]
                            _2464 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2464)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2271)
                            mem[mem[64] + 36] = address(_2288)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2271), address(_2288)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2720 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2720 + 36] = _2392
                            mem[_2720 + 68] = 0
                            mem[_2720 + 100] = address(ext_call.return_data[0])
                            mem[_2720 + 132] = 128
                            mem[_2720 + 164] = mem[_2720]
                            s = 0
                            while s < mem[_2720]:
                                mem[_2720 + s + 196] = mem[_2720 + s + 32]
                                _2262 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2720]) > mem[_2720]:
                                mem[_2720 + mem[_2720] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2392, 0, address(ext_call.return_data[0]), 128, mem[_2720], mem[_2720 + 196 len ceil32(mem[_2720])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2262 = mem[_115]
                idx = idx + 1
                continue 
            _2283 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2284 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2284 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2287 = mem[_2284]
            mem[_2283 + 100 len floor32(mem[_2284])] = mem[_2284 + 32 len floor32(mem[_2284])]
            mem[_2283 + floor32(mem[_2284]) + -(mem[_2284] % 32) + 132 len mem[_2284] % 32] = mem[_2284 + -(mem[_2284] % 32) + floor32(mem[_2284]) + 64 len mem[_2284] % 32]
            call address(cd[(arg4 + 100)]).mem[_2283 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_2283 + 104 len _2287 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
            else:
                mem[_2283 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2283 + 132]:
                        revert with 0, 'ST'
            if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            _2261 = mem[_115]
            idx = 0
            while idx < _2261 - 1:
                require idx < mem[_115]
                _2269 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2282 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2387 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2609 + 36] = 0
                            mem[_2609 + 68] = _2387
                            mem[_2609 + 100] = this.address
                            mem[_2609 + 132] = 128
                            mem[_2609 + 164] = mem[_2609]
                            s = 0
                            while s < mem[_2609]:
                                mem[_2609 + s + 196] = mem[_2609 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2609]) > mem[_2609]:
                                mem[_2609 + mem[_2609] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(this.address), 128, mem[_2609], mem[_2609 + 196 len ceil32(mem[_2609])]
                        else:
                            require idx + 2 < mem[_115]
                            _2457 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2457)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2713 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2713 + 36] = 0
                            mem[_2713 + 68] = _2387
                            mem[_2713 + 100] = address(ext_call.return_data[0])
                            mem[_2713 + 132] = 128
                            mem[_2713 + 164] = mem[_2713]
                            s = 0
                            while s < mem[_2713]:
                                mem[_2713 + s + 196] = mem[_2713 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2713]) > mem[_2713]:
                                mem[_2713 + mem[_2713] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2387, address(ext_call.return_data[0]), 128, mem[_2713], mem[_2713 + 196 len ceil32(mem[_2713])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2610 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2610 + 36] = _2387
                            mem[_2610 + 68] = 0
                            mem[_2610 + 100] = this.address
                            mem[_2610 + 132] = 128
                            mem[_2610 + 164] = mem[_2610]
                            s = 0
                            while s < mem[_2610]:
                                mem[_2610 + s + 196] = mem[_2610 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2610]) > mem[_2610]:
                                mem[_2610 + mem[_2610] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(this.address), 128, mem[_2610], mem[_2610 + 196 len ceil32(mem[_2610])]
                        else:
                            require idx + 2 < mem[_115]
                            _2458 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2458)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2714 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2714 + 36] = _2387
                            mem[_2714 + 68] = 0
                            mem[_2714 + 100] = address(ext_call.return_data[0])
                            mem[_2714 + 132] = 128
                            mem[_2714 + 164] = mem[_2714]
                            s = 0
                            while s < mem[_2714]:
                                mem[_2714 + s + 196] = mem[_2714 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2714]) > mem[_2714]:
                                mem[_2714 + mem[_2714] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2387, 0, address(ext_call.return_data[0]), 128, mem[_2714], mem[_2714 + 196 len ceil32(mem[_2714])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2388 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2611 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2611 + 36] = 0
                            mem[_2611 + 68] = _2388
                            mem[_2611 + 100] = this.address
                            mem[_2611 + 132] = 128
                            mem[_2611 + 164] = mem[_2611]
                            s = 0
                            while s < mem[_2611]:
                                mem[_2611 + s + 196] = mem[_2611 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2611]) > mem[_2611]:
                                mem[_2611 + mem[_2611] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(this.address), 128, mem[_2611], mem[_2611 + 196 len ceil32(mem[_2611])]
                        else:
                            require idx + 2 < mem[_115]
                            _2459 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2459)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2715 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2715 + 36] = 0
                            mem[_2715 + 68] = _2388
                            mem[_2715 + 100] = address(ext_call.return_data[0])
                            mem[_2715 + 132] = 128
                            mem[_2715 + 164] = mem[_2715]
                            s = 0
                            while s < mem[_2715]:
                                mem[_2715 + s + 196] = mem[_2715 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2715]) > mem[_2715]:
                                mem[_2715 + mem[_2715] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2388, address(ext_call.return_data[0]), 128, mem[_2715], mem[_2715 + 196 len ceil32(mem[_2715])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2612 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2612 + 36] = _2388
                            mem[_2612 + 68] = 0
                            mem[_2612 + 100] = this.address
                            mem[_2612 + 132] = 128
                            mem[_2612 + 164] = mem[_2612]
                            s = 0
                            while s < mem[_2612]:
                                mem[_2612 + s + 196] = mem[_2612 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2612]) > mem[_2612]:
                                mem[_2612 + mem[_2612] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(this.address), 128, mem[_2612], mem[_2612 + 196 len ceil32(mem[_2612])]
                        else:
                            require idx + 2 < mem[_115]
                            _2460 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2460)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2269)
                            mem[mem[64] + 36] = address(_2282)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2269), address(_2282)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2716 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2716 + 36] = _2388
                            mem[_2716 + 68] = 0
                            mem[_2716 + 100] = address(ext_call.return_data[0])
                            mem[_2716 + 132] = 128
                            mem[_2716 + 164] = mem[_2716]
                            s = 0
                            while s < mem[_2716]:
                                mem[_2716 + s + 196] = mem[_2716 + s + 32]
                                _2261 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2716]) > mem[_2716]:
                                mem[_2716 + mem[_2716] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2388, 0, address(ext_call.return_data[0]), 128, mem[_2716], mem[_2716 + 196 len ceil32(mem[_2716])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[_115]
                idx = idx + 1
                continue 
            _2277 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2278 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2278 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2281 = mem[_2278]
            mem[mem[64] len floor32(mem[_2278])] = mem[_2278 + 32 len floor32(mem[_2278])]
            mem[mem[64] + floor32(mem[_2278]) + -(mem[_2278] % 32) + 32 len mem[_2278] % 32] = mem[_2278 + floor32(mem[_2278]) + -(mem[_2278] % 32) + 64 len mem[_2278] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2281 + _2277 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3141] == mem[_3141]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3141]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3157] == mem[_3157]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3157]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2993 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2993] = return_data.size
                mem[_2993 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3143] == mem[_3143]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3143]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2993 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3158] == mem[_3158]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3158]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        _1562 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1562] = return_data.size
        mem[_1562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'ST'
        if not return_data.size:
            _2263 = mem[_115]
            idx = 0
            while idx < _2263 - 1:
                require idx < mem[_115]
                _2273 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2294 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2395 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2617 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2617 + 36] = 0
                            mem[_2617 + 68] = _2395
                            mem[_2617 + 100] = this.address
                            mem[_2617 + 132] = 128
                            mem[_2617 + 164] = mem[_2617]
                            s = 0
                            while s < mem[_2617]:
                                mem[_2617 + s + 196] = mem[_2617 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2617]) > mem[_2617]:
                                mem[_2617 + mem[_2617] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(this.address), 128, mem[_2617], mem[_2617 + 196 len ceil32(mem[_2617])]
                        else:
                            require idx + 2 < mem[_115]
                            _2465 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2465)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2721 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2721 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2721 + 36] = 0
                            mem[_2721 + 68] = _2395
                            mem[_2721 + 100] = address(ext_call.return_data[0])
                            mem[_2721 + 132] = 128
                            mem[_2721 + 164] = mem[_2721]
                            s = 0
                            while s < mem[_2721]:
                                mem[_2721 + s + 196] = mem[_2721 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2721]) > mem[_2721]:
                                mem[_2721 + mem[_2721] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2395, address(ext_call.return_data[0]), 128, mem[_2721], mem[_2721 + 196 len ceil32(mem[_2721])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2618 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2618 + 36] = _2395
                            mem[_2618 + 68] = 0
                            mem[_2618 + 100] = this.address
                            mem[_2618 + 132] = 128
                            mem[_2618 + 164] = mem[_2618]
                            s = 0
                            while s < mem[_2618]:
                                mem[_2618 + s + 196] = mem[_2618 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2618]) > mem[_2618]:
                                mem[_2618 + mem[_2618] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(this.address), 128, mem[_2618], mem[_2618 + 196 len ceil32(mem[_2618])]
                        else:
                            require idx + 2 < mem[_115]
                            _2466 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2466)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2722 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2722 + 36] = _2395
                            mem[_2722 + 68] = 0
                            mem[_2722 + 100] = address(ext_call.return_data[0])
                            mem[_2722 + 132] = 128
                            mem[_2722 + 164] = mem[_2722]
                            s = 0
                            while s < mem[_2722]:
                                mem[_2722 + s + 196] = mem[_2722 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2722]) > mem[_2722]:
                                mem[_2722 + mem[_2722] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2395, 0, address(ext_call.return_data[0]), 128, mem[_2722], mem[_2722 + 196 len ceil32(mem[_2722])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2396 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2619 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2619 + 36] = 0
                            mem[_2619 + 68] = _2396
                            mem[_2619 + 100] = this.address
                            mem[_2619 + 132] = 128
                            mem[_2619 + 164] = mem[_2619]
                            s = 0
                            while s < mem[_2619]:
                                mem[_2619 + s + 196] = mem[_2619 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2619]) > mem[_2619]:
                                mem[_2619 + mem[_2619] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(this.address), 128, mem[_2619], mem[_2619 + 196 len ceil32(mem[_2619])]
                        else:
                            require idx + 2 < mem[_115]
                            _2467 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2467)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2723 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2723 + 36] = 0
                            mem[_2723 + 68] = _2396
                            mem[_2723 + 100] = address(ext_call.return_data[0])
                            mem[_2723 + 132] = 128
                            mem[_2723 + 164] = mem[_2723]
                            s = 0
                            while s < mem[_2723]:
                                mem[_2723 + s + 196] = mem[_2723 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2723]) > mem[_2723]:
                                mem[_2723 + mem[_2723] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2396, address(ext_call.return_data[0]), 128, mem[_2723], mem[_2723 + 196 len ceil32(mem[_2723])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2620 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2620 + 36] = _2396
                            mem[_2620 + 68] = 0
                            mem[_2620 + 100] = this.address
                            mem[_2620 + 132] = 128
                            mem[_2620 + 164] = mem[_2620]
                            s = 0
                            while s < mem[_2620]:
                                mem[_2620 + s + 196] = mem[_2620 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2620]) > mem[_2620]:
                                mem[_2620 + mem[_2620] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(this.address), 128, mem[_2620], mem[_2620 + 196 len ceil32(mem[_2620])]
                        else:
                            require idx + 2 < mem[_115]
                            _2468 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2468)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2273)
                            mem[mem[64] + 36] = address(_2294)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2273), address(_2294)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2724 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2724 + 36] = _2396
                            mem[_2724 + 68] = 0
                            mem[_2724 + 100] = address(ext_call.return_data[0])
                            mem[_2724 + 132] = 128
                            mem[_2724 + 164] = mem[_2724]
                            s = 0
                            while s < mem[_2724]:
                                mem[_2724 + s + 196] = mem[_2724 + s + 32]
                                _2263 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2724]) > mem[_2724]:
                                mem[_2724 + mem[_2724] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2396, 0, address(ext_call.return_data[0]), 128, mem[_2724], mem[_2724 + 196 len ceil32(mem[_2724])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2263 = mem[_115]
                idx = idx + 1
                continue 
            _2289 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2290 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2290 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2293 = mem[_2290]
            mem[mem[64] len floor32(mem[_2290])] = mem[_2290 + 32 len floor32(mem[_2290])]
            mem[mem[64] + floor32(mem[_2290]) + -(mem[_2290] % 32) + 32 len mem[_2290] % 32] = mem[_2290 + floor32(mem[_2290]) + -(mem[_2290] % 32) + 64 len mem[_2290] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2293 + _2289 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3149] == mem[_3149]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3149]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3161] == mem[_3161]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3161]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2995 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2995] = return_data.size
                mem[_2995 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3151] == mem[_3151]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3151]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2995 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3162] == mem[_3162]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3162]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if not mem[_1562 + 32]:
                revert with 0, 'ST'
            _2264 = mem[_115]
            idx = 0
            while idx < _2264 - 1:
                require idx < mem[_115]
                _2275 = mem[(32 * idx) + _115 + 32]
                require idx + 1 < mem[_115]
                _2300 = mem[(32 * idx + 1) + _115 + 32]
                if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + _115 + 44 len 20] < mem[(32 * idx + 1) + _115 + 44 len 20]:
                    if not mem[(32 * idx) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2399 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2621 + 36] = 0
                            mem[_2621 + 68] = _2399
                            mem[_2621 + 100] = this.address
                            mem[_2621 + 132] = 128
                            mem[_2621 + 164] = mem[_2621]
                            s = 0
                            while s < mem[_2621]:
                                mem[_2621 + s + 196] = mem[_2621 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2621]) > mem[_2621]:
                                mem[_2621 + mem[_2621] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(this.address), 128, mem[_2621], mem[_2621 + 196 len ceil32(mem[_2621])]
                        else:
                            require idx + 2 < mem[_115]
                            _2469 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2469)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2725 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2725 + 36] = 0
                            mem[_2725 + 68] = _2399
                            mem[_2725 + 100] = address(ext_call.return_data[0])
                            mem[_2725 + 132] = 128
                            mem[_2725 + 164] = mem[_2725]
                            s = 0
                            while s < mem[_2725]:
                                mem[_2725 + s + 196] = mem[_2725 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2725]) > mem[_2725]:
                                mem[_2725 + mem[_2725] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2399, address(ext_call.return_data[0]), 128, mem[_2725], mem[_2725 + 196 len ceil32(mem[_2725])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2622 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 36] = _2399
                            mem[_2622 + 68] = 0
                            mem[_2622 + 100] = this.address
                            mem[_2622 + 132] = 128
                            mem[_2622 + 164] = mem[_2622]
                            s = 0
                            while s < mem[_2622]:
                                mem[_2622 + s + 196] = mem[_2622 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2622]) > mem[_2622]:
                                mem[_2622 + mem[_2622] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(this.address), 128, mem[_2622], mem[_2622 + 196 len ceil32(mem[_2622])]
                        else:
                            require idx + 2 < mem[_115]
                            _2470 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2470)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2726 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2726 + 36] = _2399
                            mem[_2726 + 68] = 0
                            mem[_2726 + 100] = address(ext_call.return_data[0])
                            mem[_2726 + 132] = 128
                            mem[_2726 + 164] = mem[_2726]
                            s = 0
                            while s < mem[_2726]:
                                mem[_2726 + s + 196] = mem[_2726 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2726]) > mem[_2726]:
                                mem[_2726 + mem[_2726] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2399, 0, address(ext_call.return_data[0]), 128, mem[_2726], mem[_2726 + 196 len ceil32(mem[_2726])]
                else:
                    if not mem[(32 * idx + 1) + _115 + 44 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 128]
                    _2400 = mem[(32 * idx + 1) + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * idx) + _115 + 44 len 20] == mem[(32 * idx + 1) + _115 + 44 len 20]:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2623 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2623 + 36] = 0
                            mem[_2623 + 68] = _2400
                            mem[_2623 + 100] = this.address
                            mem[_2623 + 132] = 128
                            mem[_2623 + 164] = mem[_2623]
                            s = 0
                            while s < mem[_2623]:
                                mem[_2623 + s + 196] = mem[_2623 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2623]) > mem[_2623]:
                                mem[_2623 + mem[_2623] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(this.address), 128, mem[_2623], mem[_2623 + 196 len ceil32(mem[_2623])]
                        else:
                            require idx + 2 < mem[_115]
                            _2471 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2471)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2727 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2727 + 36] = 0
                            mem[_2727 + 68] = _2400
                            mem[_2727 + 100] = address(ext_call.return_data[0])
                            mem[_2727 + 132] = 128
                            mem[_2727 + 164] = mem[_2727]
                            s = 0
                            while s < mem[_2727]:
                                mem[_2727 + s + 196] = mem[_2727 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2727]) > mem[_2727]:
                                mem[_2727 + mem[_2727] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2400, address(ext_call.return_data[0]), 128, mem[_2727], mem[_2727 + 196 len ceil32(mem[_2727])]
                    else:
                        if idx >= mem[_115] - 2:
                            mem[mem[64] + 4] = mem[(32 * idx) + _115 + 44 len 20]
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2624 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2624 + 36] = _2400
                            mem[_2624 + 68] = 0
                            mem[_2624 + 100] = this.address
                            mem[_2624 + 132] = 128
                            mem[_2624 + 164] = mem[_2624]
                            s = 0
                            while s < mem[_2624]:
                                mem[_2624 + s + 196] = mem[_2624 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2624]) > mem[_2624]:
                                mem[_2624 + mem[_2624] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(this.address), 128, mem[_2624], mem[_2624 + 196 len ceil32(mem[_2624])]
                        else:
                            require idx + 2 < mem[_115]
                            _2472 = mem[(32 * idx + 2) + _115 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx + 1) + _115 + 44 len 20]
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_2472)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(_2275)
                            mem[mem[64] + 36] = address(_2300)
                            require ext_code.size(address(_13))
                            staticcall address(_13).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_2275), address(_2300)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2728 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2728 + 36] = _2400
                            mem[_2728 + 68] = 0
                            mem[_2728 + 100] = address(ext_call.return_data[0])
                            mem[_2728 + 132] = 128
                            mem[_2728 + 164] = mem[_2728]
                            s = 0
                            while s < mem[_2728]:
                                mem[_2728 + s + 196] = mem[_2728 + s + 32]
                                _2264 = mem[_115]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2728]) > mem[_2728]:
                                mem[_2728 + mem[_2728] + 196] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2400, 0, address(ext_call.return_data[0]), 128, mem[_2728], mem[_2728 + 196 len ceil32(mem[_2728])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2264 = mem[_115]
                idx = idx + 1
                continue 
            _2295 = mem[64]
            mem[mem[64] + 36] = address(cd[(arg4 + 132)])
            mem[mem[64] + 68] = (1000 * ext_call.return_data[0] * cd[(arg4 + 36)] / 997 * 0, ext_call.return_data[4 len 28]) + 1
            _2296 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2296 + 32 len 4] = unknown_0xa9059cbb(?????)
            _2299 = mem[_2296]
            mem[mem[64] len floor32(mem[_2296])] = mem[_2296 + 32 len floor32(mem[_2296])]
            mem[mem[64] + floor32(mem[_2296]) + -(mem[_2296] % 32) + 32 len mem[_2296] % 32] = mem[_2296 + floor32(mem[_2296]) + -(mem[_2296] % 32) + 64 len mem[_2296] % 32]
            call address(cd[(arg4 + 100)]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2299 + _2295 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ST'
                if not mem[96]:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3153] == mem[_3153]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3153]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3163] == mem[_3163]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3163]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _2996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2996] = return_data.size
                mem[_2996 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ST'
                if not return_data.size:
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3155] == mem[_3155]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3155]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[_2996 + 32]:
                        revert with 0, 'ST'
                    if address(cd[(arg4 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3164] == mem[_3164]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args mem[_3164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
