import { createActionGroup, props } from '@ngrx/store';
import { ImageDetail } from '../model/image-detail.model';

export const ImageDetailActions = createActionGroup({
    source: 'Images',
    events: {
    },
});

export const ImageDetailApiActions = createActionGroup({
    source: 'Images API',
    events: {
        'Retrieved Image List': props<{ images: ReadonlyArray<ImageDetail> }>(),
    },
});