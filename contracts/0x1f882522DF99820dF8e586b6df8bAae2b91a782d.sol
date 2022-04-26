contract main {




// =====================  Runtime code  =====================


const name = 'Benqi-Mapping-v1.0', 0

const connectors = 0x127d8cd0e2b2e0366d522dea53a787bfe9002c14

const avaxAddr = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const mappingController = 0xf2113d0c99f36d7d6f6c6faf05e0863892255999

const instaIndex = 0x6ce3e607c808b4f4c26b7f6adaeb619e49cabb25


mapping of struct stor0;
array of address stor1;
mapping of address stor99;

function _fallback() payable {
    revert
}

function qiTokenMapping(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor0[arg1[all]].field_0
    mem[ceil32(arg1.length) + 160] = stor0[arg1[all]].field_256
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32]
}

function getMapping(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + arg1.length + 128] = 0
    return stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))], 
           stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
}

function updateQitokenMapping(string[] arg1, address[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require ext_code.size(0x6ce3e607c808b4f4c26b7f6adaeb619e49cabb25)
    staticcall 0x6ce3e607c808b4f4c26b7f6adaeb619e49cabb25.master() with:
            gas gas_remaining wei
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        if arg1.length != arg2.length:
            revert with 0, 'updateQitokenMapping: not same length'
        if arg1.length != arg3.length:
            revert with 0, 'updateQitokenMapping: not same length'
        idx = 0
        while idx < arg3.length:
            require idx < arg1.length
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            _289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_289] = stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_0
            mem[_289 + 32] = stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_256
            if not stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_0:
                revert with 0, 'updateQitokenMapping: mapping does not exist'
            if not stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_256:
                revert with 0, 'updateQitokenMapping: mapping does not exist'
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'updateQitokenMapping: _tokens address not vaild'
            require idx < arg3.length
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            if not address(cd[((32 * idx) + arg3 + 36)]):
                revert with 0, 'updateQitokenMapping: _qitokens address not vaild'
            require idx < arg3.length
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            staticcall address(cd[((32 * idx) + arg3 + 36)]).isQiToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_321] == bool(mem[_321])
            if not mem[_321]:
                revert with 0, 'updateQitokenMapping: not a qiToken'
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                _331 = mem[64]
                mem[64] = mem[64] + 64
                require idx < arg3.length
                require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
                mem[_331] = address(cd[((32 * idx) + arg3 + 36)])
                require idx < mem[96]
                mem[_331 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < arg1.length
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
                stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_0 = address(cd[((32 * idx) + arg3 + 36)])
                stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_256 = mem[_331 + 44 len 20]
                require idx < arg3.length
                require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
                require idx < mem[96]
                _375 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
                emit 0xc4e1a8a4: sha3(call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]), address(_375), address(cd[((32 * idx) + arg3 + 36)])
            else:
                require idx < mem[96]
                _335 = mem[(32 * idx) + 128]
                require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                staticcall address(cd[((32 * idx) + arg3 + 36)]).underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _341 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_341] == mem[_341 + 12 len 20]
                if mem[_341 + 12 len 20] != address(_335):
                    revert with 0, 'addQitokenMapping: mapping mismatch'
                _353 = mem[64]
                mem[64] = mem[64] + 64
                require idx < arg3.length
                require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
                mem[_353] = address(cd[((32 * idx) + arg3 + 36)])
                require idx < mem[96]
                mem[_353 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < arg1.length
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
                stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_0 = address(cd[((32 * idx) + arg3 + 36)])
                stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_256 = mem[_353 + 44 len 20]
                require idx < arg3.length
                require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
                require idx < mem[96]
                _397 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
                emit 0xc4e1a8a4: sha3(call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]), address(_397), address(cd[((32 * idx) + arg3 + 36)])
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + ceil32(return_data.size) + 132] = msg.sender
        require ext_code.size(0x127d8cd0e2b2e0366d522dea53a787bfe9002c14)
        staticcall 0x127d8cd0e2b2e0366d522dea53a787bfe9002c14.chief(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'not-an-chief'
        if arg1.length != arg2.length:
            revert with 0, 'updateQitokenMapping: not same length'
        if arg1.length != arg3.length:
            revert with 0, 'updateQitokenMapping: not same length'
        idx = 0
        while idx < arg3.length:
            require idx < arg1.length
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            _293 = mem[64]
            mem[64] = mem[64] + 64
            mem[_293] = stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_0
            mem[_293 + 32] = stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_256
            if not stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_0:
                revert with 0, 'updateQitokenMapping: mapping does not exist'
            if not stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_256:
                revert with 0, 'updateQitokenMapping: mapping does not exist'
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'updateQitokenMapping: _tokens address not vaild'
            require idx < arg3.length
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            if not address(cd[((32 * idx) + arg3 + 36)]):
                revert with 0, 'updateQitokenMapping: _qitokens address not vaild'
            require idx < arg3.length
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            staticcall address(cd[((32 * idx) + arg3 + 36)]).isQiToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _322 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_322] == bool(mem[_322])
            if not mem[_322]:
                revert with 0, 'updateQitokenMapping: not a qiToken'
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                _333 = mem[64]
                mem[64] = mem[64] + 64
                require idx < arg3.length
                require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
                mem[_333] = address(cd[((32 * idx) + arg3 + 36)])
                require idx < mem[96]
                mem[_333 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < arg1.length
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
                stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_0 = address(cd[((32 * idx) + arg3 + 36)])
                stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_256 = mem[_333 + 44 len 20]
                require idx < arg3.length
                require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
                require idx < mem[96]
                _376 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
                emit 0xc4e1a8a4: sha3(call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]), address(_376), address(cd[((32 * idx) + arg3 + 36)])
            else:
                require idx < mem[96]
                _338 = mem[(32 * idx) + 128]
                require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                staticcall address(cd[((32 * idx) + arg3 + 36)]).underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_342] == mem[_342 + 12 len 20]
                if mem[_342 + 12 len 20] != address(_338):
                    revert with 0, 'addQitokenMapping: mapping mismatch'
                _354 = mem[64]
                mem[64] = mem[64] + 64
                require idx < arg3.length
                require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
                mem[_354] = address(cd[((32 * idx) + arg3 + 36)])
                require idx < mem[96]
                mem[_354 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < arg1.length
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
                stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_0 = address(cd[((32 * idx) + arg3 + 36)])
                stor0[call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]].field_256 = mem[_354 + 44 len 20]
                require idx < arg3.length
                require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
                require idx < mem[96]
                _398 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
                emit 0xc4e1a8a4: sha3(call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]), address(_398), address(cd[((32 * idx) + arg3 + 36)])
            idx = idx + 1
            continue 
}

function addQitokenMapping(string[] arg1, address[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _853 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        mem[_853] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_853 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_853 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _853
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    _854 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 <= test266151307() and mem[64] + (32 * arg2.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_854] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = _854 + 32
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    _1730 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 <= test266151307() and mem[64] + (32 * arg3.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_1730] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _1730 + 32
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ce3e607c808b4f4c26b7f6adaeb619e49cabb25)
    staticcall 0x6ce3e607c808b4f4c26b7f6adaeb619e49cabb25.master() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2623 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2623] == mem[_2623 + 12 len 20]
    if msg.sender == mem[_2623 + 12 len 20]:
        if mem[96] != mem[_854]:
            revert with 0, 'addQitokenMapping: not same length'
        if mem[96] != arg3.length:
            revert with 0, 'addQitokenMapping: not same length'
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _3517 = mem[(32 * idx) + 128]
            _3518 = mem[64]
            _3523 = mem[mem[(32 * idx) + 128]]
            s = 0
            while s < _3523:
                mem[_3518 + s] = mem[_3517 + s + 32]
                s = s + 32
                continue 
            mem[_3518 + _3523] = 0
            if ceil32(_3523) <= _3523:
                _4367 = sha3(mem[mem[64] len _3518 + _3523 + -mem[64] + 32])
                _4368 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4368] = stor[_4367]
                mem[_4368 + 32] = stor1[_4367]
                if stor[_4367]:
                    revert with 0, 'addQitokenMapping: mapping added already'
                if stor1[_4367]:
                    revert with 0, 'addQitokenMapping: mapping added already'
                require idx < mem[_854]
                if not mem[(32 * idx) + _854 + 44 len 20]:
                    revert with 0, 'addQitokenMapping: _tokens address not vaild'
                require idx < mem[_1730]
                if not mem[(32 * idx) + _1730 + 44 len 20]:
                    revert with 0, 'addQitokenMapping: _qitokens address not vaild'
                require idx < mem[_1730]
                _4444 = mem[(32 * idx) + _1730 + 32]
                require ext_code.size(mem[(32 * idx) + _1730 + 44 len 20])
                staticcall mem[(32 * idx) + _1730 + 44 len 20].isQiToken() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4477 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4477] == bool(mem[_4477])
                if not mem[_4477]:
                    revert with 0, 'addQitokenMapping: not a qiToken'
                require idx < mem[_854]
                if mem[(32 * idx) + _854 + 44 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    _4519 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1730]
                    mem[_4519] = mem[(32 * idx) + _1730 + 44 len 20]
                    require idx < mem[_854]
                    mem[_4519 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                    require idx < mem[96]
                    _4576 = mem[(32 * idx) + 128]
                    _4577 = mem[64]
                    _4606 = mem[mem[(32 * idx) + 128]]
                    s = 0
                    while s < _4606:
                        mem[_4577 + s] = mem[_4576 + s + 32]
                        s = s + 32
                        continue 
                    mem[_4577 + _4606] = 0
                    stor[sha3(mem[mem[64] len _4577 + _4606 + -mem[64] + 32])] = mem[_4519 + 12 len 20]
                    stor1[sha3(mem[mem[64] len _4577 + _4606 + -mem[64] + 32])] = mem[_4519 + 44 len 20]
                    require idx < mem[_1730]
                    if ceil32(_4606) <= _4606:
                        _5272 = mem[(32 * idx) + _1730 + 32]
                        require idx < mem[_854]
                        _5356 = mem[(32 * idx) + _854 + 32]
                        require idx < mem[96]
                        _5404 = mem[(32 * idx) + 128]
                        _5405 = mem[64]
                        _5476 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _5476:
                            mem[_5405 + s] = mem[_5404 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5476) > _5476:
                            mem[_5405 + _5476] = 0
                        emit 0x27f18776: sha3(mem[mem[64] len _5405 + _5476 - mem[64]]), address(_5356), address(_5272)
                    else:
                        _5358 = mem[(32 * idx) + _1730 + 32]
                        require idx < mem[_854]
                        _5406 = mem[(32 * idx) + _854 + 32]
                        require idx < mem[96]
                        _5452 = mem[(32 * idx) + 128]
                        _5453 = mem[64]
                        _5488 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _5488:
                            mem[_5453 + s] = mem[_5452 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5488) > _5488:
                            mem[_5453 + _5488] = 0
                        emit 0x27f18776: sha3(mem[mem[64] len _5453 + _5488 - mem[64]]), address(_5406), address(_5358)
                else:
                    require idx < mem[_854]
                    _4533 = mem[(32 * idx) + _854 + 32]
                    require ext_code.size(address(_4444))
                    staticcall address(_4444).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4578] == mem[_4578 + 12 len 20]
                    if mem[_4578 + 12 len 20] != address(_4533):
                        revert with 0, 'addQitokenMapping: mapping mismatch'
                    _4649 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1730]
                    mem[_4649] = mem[(32 * idx) + _1730 + 44 len 20]
                    require idx < mem[_854]
                    mem[_4649 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                    require idx < mem[96]
                    _4770 = mem[(32 * idx) + 128]
                    _4771 = mem[64]
                    _4817 = mem[mem[(32 * idx) + 128]]
                    s = 0
                    while s < _4817:
                        mem[_4771 + s] = mem[_4770 + s + 32]
                        s = s + 32
                        continue 
                    mem[_4771 + _4817] = 0
                    stor[sha3(mem[mem[64] len _4771 + _4817 + -mem[64] + 32])] = mem[_4649 + 12 len 20]
                    stor1[sha3(mem[mem[64] len _4771 + _4817 + -mem[64] + 32])] = mem[_4649 + 44 len 20]
                    require idx < mem[_1730]
                    if ceil32(_4817) <= _4817:
                        _5279 = mem[(32 * idx) + _1730 + 32]
                        require idx < mem[_854]
                        _5360 = mem[(32 * idx) + _854 + 32]
                        require idx < mem[96]
                        _5408 = mem[(32 * idx) + 128]
                        _5409 = mem[64]
                        _5477 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _5477:
                            mem[_5409 + s] = mem[_5408 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5477) > _5477:
                            mem[_5409 + _5477] = 0
                        emit 0x27f18776: sha3(mem[mem[64] len _5409 + _5477 - mem[64]]), address(_5360), address(_5279)
                    else:
                        _5362 = mem[(32 * idx) + _1730 + 32]
                        require idx < mem[_854]
                        _5410 = mem[(32 * idx) + _854 + 32]
                        require idx < mem[96]
                        _5454 = mem[(32 * idx) + 128]
                        _5455 = mem[64]
                        _5489 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _5489:
                            mem[_5455 + s] = mem[_5454 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5489) > _5489:
                            mem[_5455 + _5489] = 0
                        emit 0x27f18776: sha3(mem[mem[64] len _5455 + _5489 - mem[64]]), address(_5410), address(_5362)
            else:
                _4381 = sha3(mem[mem[64] len _3518 + _3523 + -mem[64] + 32])
                _4382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4382] = stor[_4381]
                mem[_4382 + 32] = stor1[_4381]
                if stor[_4381]:
                    revert with 0, 'addQitokenMapping: mapping added already'
                if stor1[_4381]:
                    revert with 0, 'addQitokenMapping: mapping added already'
                require idx < mem[_854]
                if not mem[(32 * idx) + _854 + 44 len 20]:
                    revert with 0, 'addQitokenMapping: _tokens address not vaild'
                require idx < mem[_1730]
                if not mem[(32 * idx) + _1730 + 44 len 20]:
                    revert with 0, 'addQitokenMapping: _qitokens address not vaild'
                require idx < mem[_1730]
                _4463 = mem[(32 * idx) + _1730 + 32]
                require ext_code.size(mem[(32 * idx) + _1730 + 44 len 20])
                staticcall mem[(32 * idx) + _1730 + 44 len 20].isQiToken() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4484] == bool(mem[_4484])
                if not mem[_4484]:
                    revert with 0, 'addQitokenMapping: not a qiToken'
                require idx < mem[_854]
                if mem[(32 * idx) + _854 + 44 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    _4536 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1730]
                    mem[_4536] = mem[(32 * idx) + _1730 + 44 len 20]
                    require idx < mem[_854]
                    mem[_4536 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                    require idx < mem[96]
                    _4592 = mem[(32 * idx) + 128]
                    _4593 = mem[64]
                    _4612 = mem[mem[(32 * idx) + 128]]
                    s = 0
                    while s < _4612:
                        mem[_4593 + s] = mem[_4592 + s + 32]
                        s = s + 32
                        continue 
                    mem[_4593 + _4612] = 0
                    stor[sha3(mem[mem[64] len _4593 + _4612 + -mem[64] + 32])] = mem[_4536 + 12 len 20]
                    stor1[sha3(mem[mem[64] len _4593 + _4612 + -mem[64] + 32])] = mem[_4536 + 44 len 20]
                    require idx < mem[_1730]
                    if ceil32(_4612) <= _4612:
                        _5286 = mem[(32 * idx) + _1730 + 32]
                        require idx < mem[_854]
                        _5364 = mem[(32 * idx) + _854 + 32]
                        require idx < mem[96]
                        _5412 = mem[(32 * idx) + 128]
                        _5413 = mem[64]
                        _5478 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _5478:
                            mem[_5413 + s] = mem[_5412 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5478) > _5478:
                            mem[_5413 + _5478] = 0
                        emit 0x27f18776: sha3(mem[mem[64] len _5413 + _5478 - mem[64]]), address(_5364), address(_5286)
                    else:
                        _5366 = mem[(32 * idx) + _1730 + 32]
                        require idx < mem[_854]
                        _5414 = mem[(32 * idx) + _854 + 32]
                        require idx < mem[96]
                        _5456 = mem[(32 * idx) + 128]
                        _5457 = mem[64]
                        _5490 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _5490:
                            mem[_5457 + s] = mem[_5456 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5490) > _5490:
                            mem[_5457 + _5490] = 0
                        emit 0x27f18776: sha3(mem[mem[64] len _5457 + _5490 - mem[64]]), address(_5414), address(_5366)
                else:
                    require idx < mem[_854]
                    _4559 = mem[(32 * idx) + _854 + 32]
                    require ext_code.size(address(_4463))
                    staticcall address(_4463).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4594 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4594] == mem[_4594 + 12 len 20]
                    if mem[_4594 + 12 len 20] != address(_4559):
                        revert with 0, 'addQitokenMapping: mapping mismatch'
                    _4700 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1730]
                    mem[_4700] = mem[(32 * idx) + _1730 + 44 len 20]
                    require idx < mem[_854]
                    mem[_4700 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                    require idx < mem[96]
                    _4800 = mem[(32 * idx) + 128]
                    _4801 = mem[64]
                    _4829 = mem[mem[(32 * idx) + 128]]
                    s = 0
                    while s < _4829:
                        mem[_4801 + s] = mem[_4800 + s + 32]
                        s = s + 32
                        continue 
                    mem[_4801 + _4829] = 0
                    stor[sha3(mem[mem[64] len _4801 + _4829 + -mem[64] + 32])] = mem[_4700 + 12 len 20]
                    stor1[sha3(mem[mem[64] len _4801 + _4829 + -mem[64] + 32])] = mem[_4700 + 44 len 20]
                    require idx < mem[_1730]
                    if ceil32(_4829) <= _4829:
                        _5293 = mem[(32 * idx) + _1730 + 32]
                        require idx < mem[_854]
                        _5368 = mem[(32 * idx) + _854 + 32]
                        require idx < mem[96]
                        _5416 = mem[(32 * idx) + 128]
                        _5417 = mem[64]
                        _5479 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _5479:
                            mem[_5417 + s] = mem[_5416 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5479) > _5479:
                            mem[_5417 + _5479] = 0
                        emit 0x27f18776: sha3(mem[mem[64] len _5417 + _5479 - mem[64]]), address(_5368), address(_5293)
                    else:
                        _5370 = mem[(32 * idx) + _1730 + 32]
                        require idx < mem[_854]
                        _5418 = mem[(32 * idx) + _854 + 32]
                        require idx < mem[96]
                        _5458 = mem[(32 * idx) + 128]
                        _5459 = mem[64]
                        _5491 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _5491:
                            mem[_5459 + s] = mem[_5458 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5491) > _5491:
                            mem[_5459 + _5491] = 0
                        emit 0x27f18776: sha3(mem[mem[64] len _5459 + _5491 - mem[64]]), address(_5418), address(_5370)
            idx = idx + 1
            continue 
    else:
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x127d8cd0e2b2e0366d522dea53a787bfe9002c14)
        staticcall 0x127d8cd0e2b2e0366d522dea53a787bfe9002c14.chief(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2640 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2640] == bool(mem[_2640])
        if mem[_2640]:
            if mem[96] != mem[_854]:
                revert with 0, 'addQitokenMapping: not same length'
            if mem[96] != arg3.length:
                revert with 0, 'addQitokenMapping: not same length'
            idx = 0
            while idx < arg3.length:
                require idx < mem[96]
                _3519 = mem[(32 * idx) + 128]
                _3520 = mem[64]
                _3524 = mem[mem[(32 * idx) + 128]]
                s = 0
                while s < _3524:
                    mem[_3520 + s] = mem[_3519 + s + 32]
                    s = s + 32
                    continue 
                mem[_3520 + _3524] = 0
                if ceil32(_3524) <= _3524:
                    _4371 = sha3(mem[mem[64] len _3520 + _3524 + -mem[64] + 32])
                    _4372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4372] = stor[_4371]
                    mem[_4372 + 32] = stor1[_4371]
                    if stor[_4371]:
                        revert with 0, 'addQitokenMapping: mapping added already'
                    if stor1[_4371]:
                        revert with 0, 'addQitokenMapping: mapping added already'
                    require idx < mem[_854]
                    if not mem[(32 * idx) + _854 + 44 len 20]:
                        revert with 0, 'addQitokenMapping: _tokens address not vaild'
                    require idx < mem[_1730]
                    if not mem[(32 * idx) + _1730 + 44 len 20]:
                        revert with 0, 'addQitokenMapping: _qitokens address not vaild'
                    require idx < mem[_1730]
                    _4450 = mem[(32 * idx) + _1730 + 32]
                    require ext_code.size(mem[(32 * idx) + _1730 + 44 len 20])
                    staticcall mem[(32 * idx) + _1730 + 44 len 20].isQiToken() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4479] == bool(mem[_4479])
                    if not mem[_4479]:
                        revert with 0, 'addQitokenMapping: not a qiToken'
                    require idx < mem[_854]
                    if mem[(32 * idx) + _854 + 44 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        _4523 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[_1730]
                        mem[_4523] = mem[(32 * idx) + _1730 + 44 len 20]
                        require idx < mem[_854]
                        mem[_4523 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                        require idx < mem[96]
                        _4581 = mem[(32 * idx) + 128]
                        _4582 = mem[64]
                        _4608 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _4608:
                            mem[_4582 + s] = mem[_4581 + s + 32]
                            s = s + 32
                            continue 
                        mem[_4582 + _4608] = 0
                        stor[sha3(mem[mem[64] len _4582 + _4608 + -mem[64] + 32])] = mem[_4523 + 12 len 20]
                        stor1[sha3(mem[mem[64] len _4582 + _4608 + -mem[64] + 32])] = mem[_4523 + 44 len 20]
                        require idx < mem[_1730]
                        if ceil32(_4608) <= _4608:
                            _5300 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5372 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5420 = mem[(32 * idx) + 128]
                            _5421 = mem[64]
                            _5480 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5480:
                                mem[_5421 + s] = mem[_5420 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5480) > _5480:
                                mem[_5421 + _5480] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5421 + _5480 - mem[64]]), address(_5372), address(_5300)
                        else:
                            _5374 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5422 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5460 = mem[(32 * idx) + 128]
                            _5461 = mem[64]
                            _5492 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5492:
                                mem[_5461 + s] = mem[_5460 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5492) > _5492:
                                mem[_5461 + _5492] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5461 + _5492 - mem[64]]), address(_5422), address(_5374)
                    else:
                        require idx < mem[_854]
                        _4541 = mem[(32 * idx) + _854 + 32]
                        require ext_code.size(address(_4450))
                        staticcall address(_4450).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4583] == mem[_4583 + 12 len 20]
                        if mem[_4583 + 12 len 20] != address(_4541):
                            revert with 0, 'addQitokenMapping: mapping mismatch'
                        _4664 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[_1730]
                        mem[_4664] = mem[(32 * idx) + _1730 + 44 len 20]
                        require idx < mem[_854]
                        mem[_4664 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                        require idx < mem[96]
                        _4780 = mem[(32 * idx) + 128]
                        _4781 = mem[64]
                        _4821 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _4821:
                            mem[_4781 + s] = mem[_4780 + s + 32]
                            s = s + 32
                            continue 
                        mem[_4781 + _4821] = 0
                        stor[sha3(mem[mem[64] len _4781 + _4821 + -mem[64] + 32])] = mem[_4664 + 12 len 20]
                        stor1[sha3(mem[mem[64] len _4781 + _4821 + -mem[64] + 32])] = mem[_4664 + 44 len 20]
                        require idx < mem[_1730]
                        if ceil32(_4821) <= _4821:
                            _5307 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5376 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5424 = mem[(32 * idx) + 128]
                            _5425 = mem[64]
                            _5481 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5481:
                                mem[_5425 + s] = mem[_5424 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5481) > _5481:
                                mem[_5425 + _5481] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5425 + _5481 - mem[64]]), address(_5376), address(_5307)
                        else:
                            _5378 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5426 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5462 = mem[(32 * idx) + 128]
                            _5463 = mem[64]
                            _5493 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5493:
                                mem[_5463 + s] = mem[_5462 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5493) > _5493:
                                mem[_5463 + _5493] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5463 + _5493 - mem[64]]), address(_5426), address(_5378)
                else:
                    _4387 = sha3(mem[mem[64] len _3520 + _3524 + -mem[64] + 32])
                    _4388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4388] = stor[_4387]
                    mem[_4388 + 32] = stor1[_4387]
                    if stor[_4387]:
                        revert with 0, 'addQitokenMapping: mapping added already'
                    if stor1[_4387]:
                        revert with 0, 'addQitokenMapping: mapping added already'
                    require idx < mem[_854]
                    if not mem[(32 * idx) + _854 + 44 len 20]:
                        revert with 0, 'addQitokenMapping: _tokens address not vaild'
                    require idx < mem[_1730]
                    if not mem[(32 * idx) + _1730 + 44 len 20]:
                        revert with 0, 'addQitokenMapping: _qitokens address not vaild'
                    require idx < mem[_1730]
                    _4468 = mem[(32 * idx) + _1730 + 32]
                    require ext_code.size(mem[(32 * idx) + _1730 + 44 len 20])
                    staticcall mem[(32 * idx) + _1730 + 44 len 20].isQiToken() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4486 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4486] == bool(mem[_4486])
                    if not mem[_4486]:
                        revert with 0, 'addQitokenMapping: not a qiToken'
                    require idx < mem[_854]
                    if mem[(32 * idx) + _854 + 44 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        _4544 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[_1730]
                        mem[_4544] = mem[(32 * idx) + _1730 + 44 len 20]
                        require idx < mem[_854]
                        mem[_4544 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                        require idx < mem[96]
                        _4596 = mem[(32 * idx) + 128]
                        _4597 = mem[64]
                        _4614 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _4614:
                            mem[_4597 + s] = mem[_4596 + s + 32]
                            s = s + 32
                            continue 
                        mem[_4597 + _4614] = 0
                        stor[sha3(mem[mem[64] len _4597 + _4614 + -mem[64] + 32])] = mem[_4544 + 12 len 20]
                        stor1[sha3(mem[mem[64] len _4597 + _4614 + -mem[64] + 32])] = mem[_4544 + 44 len 20]
                        require idx < mem[_1730]
                        if ceil32(_4614) <= _4614:
                            _5314 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5380 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5428 = mem[(32 * idx) + 128]
                            _5429 = mem[64]
                            _5482 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5482:
                                mem[_5429 + s] = mem[_5428 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5482) > _5482:
                                mem[_5429 + _5482] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5429 + _5482 - mem[64]]), address(_5380), address(_5314)
                        else:
                            _5382 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5430 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5464 = mem[(32 * idx) + 128]
                            _5465 = mem[64]
                            _5494 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5494:
                                mem[_5465 + s] = mem[_5464 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5494) > _5494:
                                mem[_5465 + _5494] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5465 + _5494 - mem[64]]), address(_5430), address(_5382)
                    else:
                        require idx < mem[_854]
                        _4566 = mem[(32 * idx) + _854 + 32]
                        require ext_code.size(address(_4468))
                        staticcall address(_4468).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4598 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4598] == mem[_4598 + 12 len 20]
                        if mem[_4598 + 12 len 20] != address(_4566):
                            revert with 0, 'addQitokenMapping: mapping mismatch'
                        _4715 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[_1730]
                        mem[_4715] = mem[(32 * idx) + _1730 + 44 len 20]
                        require idx < mem[_854]
                        mem[_4715 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                        require idx < mem[96]
                        _4804 = mem[(32 * idx) + 128]
                        _4805 = mem[64]
                        _4831 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _4831:
                            mem[_4805 + s] = mem[_4804 + s + 32]
                            s = s + 32
                            continue 
                        mem[_4805 + _4831] = 0
                        stor[sha3(mem[mem[64] len _4805 + _4831 + -mem[64] + 32])] = mem[_4715 + 12 len 20]
                        stor1[sha3(mem[mem[64] len _4805 + _4831 + -mem[64] + 32])] = mem[_4715 + 44 len 20]
                        require idx < mem[_1730]
                        if ceil32(_4831) <= _4831:
                            _5321 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5384 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5432 = mem[(32 * idx) + 128]
                            _5433 = mem[64]
                            _5483 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5483:
                                mem[_5433 + s] = mem[_5432 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5483) > _5483:
                                mem[_5433 + _5483] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5433 + _5483 - mem[64]]), address(_5384), address(_5321)
                        else:
                            _5386 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5434 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5466 = mem[(32 * idx) + 128]
                            _5467 = mem[64]
                            _5495 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5495:
                                mem[_5467 + s] = mem[_5466 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5495) > _5495:
                                mem[_5467 + _5495] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5467 + _5495 - mem[64]]), address(_5434), address(_5386)
                idx = idx + 1
                continue 
        else:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(0xf2113d0c99f36d7d6f6c6faf05e0863892255999)
            staticcall 0xf2113d0c99f36d7d6f6c6faf05e0863892255999.hasRole(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2738 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2738] == bool(mem[_2738])
            if not mem[_2738]:
                revert with 0, 'not-an-chief/controller'
            if mem[96] != mem[_854]:
                revert with 0, 'addQitokenMapping: not same length'
            if mem[96] != arg3.length:
                revert with 0, 'addQitokenMapping: not same length'
            idx = 0
            while idx < arg3.length:
                require idx < mem[96]
                _3521 = mem[(32 * idx) + 128]
                _3522 = mem[64]
                _3525 = mem[mem[(32 * idx) + 128]]
                s = 0
                while s < _3525:
                    mem[_3522 + s] = mem[_3521 + s + 32]
                    s = s + 32
                    continue 
                mem[_3522 + _3525] = 0
                if ceil32(_3525) <= _3525:
                    _4375 = sha3(mem[mem[64] len _3522 + _3525 + -mem[64] + 32])
                    _4376 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4376] = stor[_4375]
                    mem[_4376 + 32] = stor1[_4375]
                    if stor[_4375]:
                        revert with 0, 'addQitokenMapping: mapping added already'
                    if stor1[_4375]:
                        revert with 0, 'addQitokenMapping: mapping added already'
                    require idx < mem[_854]
                    if not mem[(32 * idx) + _854 + 44 len 20]:
                        revert with 0, 'addQitokenMapping: _tokens address not vaild'
                    require idx < mem[_1730]
                    if not mem[(32 * idx) + _1730 + 44 len 20]:
                        revert with 0, 'addQitokenMapping: _qitokens address not vaild'
                    require idx < mem[_1730]
                    _4456 = mem[(32 * idx) + _1730 + 32]
                    require ext_code.size(mem[(32 * idx) + _1730 + 44 len 20])
                    staticcall mem[(32 * idx) + _1730 + 44 len 20].isQiToken() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4481 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4481] == bool(mem[_4481])
                    if not mem[_4481]:
                        revert with 0, 'addQitokenMapping: not a qiToken'
                    require idx < mem[_854]
                    if mem[(32 * idx) + _854 + 44 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        _4527 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[_1730]
                        mem[_4527] = mem[(32 * idx) + _1730 + 44 len 20]
                        require idx < mem[_854]
                        mem[_4527 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                        require idx < mem[96]
                        _4586 = mem[(32 * idx) + 128]
                        _4587 = mem[64]
                        _4610 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _4610:
                            mem[_4587 + s] = mem[_4586 + s + 32]
                            s = s + 32
                            continue 
                        mem[_4587 + _4610] = 0
                        stor[sha3(mem[mem[64] len _4587 + _4610 + -mem[64] + 32])] = mem[_4527 + 12 len 20]
                        stor1[sha3(mem[mem[64] len _4587 + _4610 + -mem[64] + 32])] = mem[_4527 + 44 len 20]
                        require idx < mem[_1730]
                        if ceil32(_4610) <= _4610:
                            _5328 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5388 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5436 = mem[(32 * idx) + 128]
                            _5437 = mem[64]
                            _5484 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5484:
                                mem[_5437 + s] = mem[_5436 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5484) > _5484:
                                mem[_5437 + _5484] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5437 + _5484 - mem[64]]), address(_5388), address(_5328)
                        else:
                            _5390 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5438 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5468 = mem[(32 * idx) + 128]
                            _5469 = mem[64]
                            _5496 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5496:
                                mem[_5469 + s] = mem[_5468 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5496) > _5496:
                                mem[_5469 + _5496] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5469 + _5496 - mem[64]]), address(_5438), address(_5390)
                    else:
                        require idx < mem[_854]
                        _4549 = mem[(32 * idx) + _854 + 32]
                        require ext_code.size(address(_4456))
                        staticcall address(_4456).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4588 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4588] == mem[_4588 + 12 len 20]
                        if mem[_4588 + 12 len 20] != address(_4549):
                            revert with 0, 'addQitokenMapping: mapping mismatch'
                        _4679 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[_1730]
                        mem[_4679] = mem[(32 * idx) + _1730 + 44 len 20]
                        require idx < mem[_854]
                        mem[_4679 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                        require idx < mem[96]
                        _4790 = mem[(32 * idx) + 128]
                        _4791 = mem[64]
                        _4825 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _4825:
                            mem[_4791 + s] = mem[_4790 + s + 32]
                            s = s + 32
                            continue 
                        mem[_4791 + _4825] = 0
                        stor[sha3(mem[mem[64] len _4791 + _4825 + -mem[64] + 32])] = mem[_4679 + 12 len 20]
                        stor1[sha3(mem[mem[64] len _4791 + _4825 + -mem[64] + 32])] = mem[_4679 + 44 len 20]
                        require idx < mem[_1730]
                        if ceil32(_4825) <= _4825:
                            _5335 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5392 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5440 = mem[(32 * idx) + 128]
                            _5441 = mem[64]
                            _5485 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5485:
                                mem[_5441 + s] = mem[_5440 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5485) > _5485:
                                mem[_5441 + _5485] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5441 + _5485 - mem[64]]), address(_5392), address(_5335)
                        else:
                            _5394 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5442 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5470 = mem[(32 * idx) + 128]
                            _5471 = mem[64]
                            _5497 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5497:
                                mem[_5471 + s] = mem[_5470 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5497) > _5497:
                                mem[_5471 + _5497] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5471 + _5497 - mem[64]]), address(_5442), address(_5394)
                else:
                    _4393 = sha3(mem[mem[64] len _3522 + _3525 + -mem[64] + 32])
                    _4394 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4394] = stor[_4393]
                    mem[_4394 + 32] = stor1[_4393]
                    if stor[_4393]:
                        revert with 0, 'addQitokenMapping: mapping added already'
                    if stor1[_4393]:
                        revert with 0, 'addQitokenMapping: mapping added already'
                    require idx < mem[_854]
                    if not mem[(32 * idx) + _854 + 44 len 20]:
                        revert with 0, 'addQitokenMapping: _tokens address not vaild'
                    require idx < mem[_1730]
                    if not mem[(32 * idx) + _1730 + 44 len 20]:
                        revert with 0, 'addQitokenMapping: _qitokens address not vaild'
                    require idx < mem[_1730]
                    _4473 = mem[(32 * idx) + _1730 + 32]
                    require ext_code.size(mem[(32 * idx) + _1730 + 44 len 20])
                    staticcall mem[(32 * idx) + _1730 + 44 len 20].isQiToken() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4488 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4488] == bool(mem[_4488])
                    if not mem[_4488]:
                        revert with 0, 'addQitokenMapping: not a qiToken'
                    require idx < mem[_854]
                    if mem[(32 * idx) + _854 + 44 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        _4552 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[_1730]
                        mem[_4552] = mem[(32 * idx) + _1730 + 44 len 20]
                        require idx < mem[_854]
                        mem[_4552 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                        require idx < mem[96]
                        _4600 = mem[(32 * idx) + 128]
                        _4601 = mem[64]
                        _4616 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _4616:
                            mem[_4601 + s] = mem[_4600 + s + 32]
                            s = s + 32
                            continue 
                        mem[_4601 + _4616] = 0
                        stor[sha3(mem[mem[64] len _4601 + _4616 + -mem[64] + 32])] = mem[_4552 + 12 len 20]
                        stor1[sha3(mem[mem[64] len _4601 + _4616 + -mem[64] + 32])] = mem[_4552 + 44 len 20]
                        require idx < mem[_1730]
                        if ceil32(_4616) <= _4616:
                            _5342 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5396 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5444 = mem[(32 * idx) + 128]
                            _5445 = mem[64]
                            _5486 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5486:
                                mem[_5445 + s] = mem[_5444 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5486) > _5486:
                                mem[_5445 + _5486] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5445 + _5486 - mem[64]]), address(_5396), address(_5342)
                        else:
                            _5398 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5446 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5472 = mem[(32 * idx) + 128]
                            _5473 = mem[64]
                            _5498 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5498:
                                mem[_5473 + s] = mem[_5472 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5498) > _5498:
                                mem[_5473 + _5498] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5473 + _5498 - mem[64]]), address(_5446), address(_5398)
                    else:
                        require idx < mem[_854]
                        _4573 = mem[(32 * idx) + _854 + 32]
                        require ext_code.size(address(_4473))
                        staticcall address(_4473).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4602 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4602] == mem[_4602 + 12 len 20]
                        if mem[_4602 + 12 len 20] != address(_4573):
                            revert with 0, 'addQitokenMapping: mapping mismatch'
                        _4730 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[_1730]
                        mem[_4730] = mem[(32 * idx) + _1730 + 44 len 20]
                        require idx < mem[_854]
                        mem[_4730 + 32] = mem[(32 * idx) + _854 + 44 len 20]
                        require idx < mem[96]
                        _4808 = mem[(32 * idx) + 128]
                        _4809 = mem[64]
                        _4833 = mem[mem[(32 * idx) + 128]]
                        s = 0
                        while s < _4833:
                            mem[_4809 + s] = mem[_4808 + s + 32]
                            s = s + 32
                            continue 
                        mem[_4809 + _4833] = 0
                        stor[sha3(mem[mem[64] len _4809 + _4833 + -mem[64] + 32])] = mem[_4730 + 12 len 20]
                        stor1[sha3(mem[mem[64] len _4809 + _4833 + -mem[64] + 32])] = mem[_4730 + 44 len 20]
                        require idx < mem[_1730]
                        if ceil32(_4833) <= _4833:
                            _5349 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5400 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5448 = mem[(32 * idx) + 128]
                            _5449 = mem[64]
                            _5487 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5487:
                                mem[_5449 + s] = mem[_5448 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5487) > _5487:
                                mem[_5449 + _5487] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5449 + _5487 - mem[64]]), address(_5400), address(_5349)
                        else:
                            _5402 = mem[(32 * idx) + _1730 + 32]
                            require idx < mem[_854]
                            _5450 = mem[(32 * idx) + _854 + 32]
                            require idx < mem[96]
                            _5474 = mem[(32 * idx) + 128]
                            _5475 = mem[64]
                            _5499 = mem[mem[(32 * idx) + 128]]
                            s = 0
                            while s < _5499:
                                mem[_5475 + s] = mem[_5474 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5499) > _5499:
                                mem[_5475 + _5499] = 0
                            emit 0x27f18776: sha3(mem[mem[64] len _5475 + _5499 - mem[64]]), address(_5450), address(_5402)
                idx = idx + 1
                continue 
}



}
